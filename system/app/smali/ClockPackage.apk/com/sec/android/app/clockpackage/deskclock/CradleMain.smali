.class public Lcom/sec/android/app/clockpackage/deskclock/CradleMain;
.super Landroid/app/Activity;
.source "CradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/sec/android/app/clockpackage/deskclock/Navigator;


# static fields
.field public static STATE_CALENDAR:I

.field public static STATE_CLOCK_ANALOG:I

.field public static STATE_CLOCK_DIGITAL_1:I

.field public static STATE_CLOCK_DIGITAL_2:I

.field public static STATE_CLOCK_DIGITAL_3:I

.field public static STATE_CLOCK_DIGITAL_4:I

.field public static STATE_NO_CLOCK_CALENDAR:I

.field private static mIsNowLoadingWeather:Z

.field private static main_view:Landroid/view/View;


# instance fields
.field private final ACTION_WEATHER_DATA_UPDATED:Ljava/lang/String;

.field private final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final SCREEN_SAVER_COLOR:I

.field private final SCREEN_SAVER_COLOR_DIM:I

.field private final SCREEN_SAVER_MOVE_DELAY:J

.field private final SCREEN_SAVER_MOVE_MSG:I

.field private final SCREEN_SAVER_TIMEOUT:J

.field private final SCREEN_SAVER_TIMEOUT_MSG:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private cityLocation:Ljava/lang/String;

.field private hour:I

.field private mAfEventChangeTiem:J

.field private mAmPmText:Landroid/view/View;

.field private mAmPmText_kor:Landroid/widget/TextView;

.field private mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

.field private mAnalogClockAmPm:Landroid/widget/TextView;

.field private mAnalogClockDate:Landroid/widget/TextView;

.field private mAnalogClockMonth:Landroid/widget/TextView;

.field private mAnalogClockTime:Landroid/widget/TextView;

.field private mAnalogClockView:Landroid/view/View;

.field private mBackground:Landroid/widget/ImageView;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBcakupRefreshTime:J

.field private mBfEventChangeTime:J

.field private mBigNumbers:[I

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarLine:Landroid/widget/ImageView;

.field private mCalendarView:Landroid/view/View;

.field private mCheckFistConnect:Z

.field private mCityName:Landroid/widget/TextView;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

.field mCradle:Landroid/widget/FrameLayout;

.field private mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

.field private mCradleDimOpacity:Landroid/widget/ImageView;

.field private mCreateFinish:Z

.field private mCurrentCityIdx:I

.field mCurrentClockView:I

.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private mCurrentOrientation:I

.field private mDate:Ljava/util/Date;

.field private mDateText:Landroid/widget/TextView;

.field private mDigitalClockView:Landroid/view/View;

.field private mDimmed:Z

.field private mEnableVoiceSearch:Z

.field public mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mGoExitButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private final mHandy:Landroid/os/Handler;

.field private mHasVoiceSearch:Z

.field private mHourView1:Landroid/view/View;

.field private mHourView2:Landroid/view/View;

.field private mIsHideShortcut:Z

.field private mIsLiveWallpaperOn:Z

.field private mIsNight:Z

.field private mIsSetWeatherRefresh:Z

.field private mIsStartFromTab:Ljava/lang/Boolean;

.field private mLastNetAccessable:Z

.field public mLaunchedFromDock:Z

.field private mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

.field private mMenu:Landroid/view/Menu;

.field private mMinView1:Landroid/view/View;

.field private mMinView2:Landroid/view/View;

.field private mMonthClockView:Landroid/widget/TextView;

.field private mMonthNumbers:[I

.field private mMonthNumbers_night:[I

.field private mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

.field private mPluggedIn:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRNG:Ljava/util/Random;

.field private mRefreshTime:J

.field private mRefreshTimeInterval:I

.field private mSaverView:Landroid/view/View;

.field private mScreenDate:Landroid/widget/TextView;

.field private mScreenSaverMode:Z

.field private mScreenSaverMode_backpress:Z

.field private mScreenWeatherView:Landroid/view/View;

.field public mSelectedCity:Ljava/lang/String;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTemNumbers:[I

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon:Landroid/view/View;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWallpaperChanged:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperType:I

.field private mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

.field private mWeatherHandler:Landroid/os/Handler;

.field private mWeatherView:Landroid/view/View;

.field private mWeather_temperature:Landroid/widget/TextView;

.field private min:I

.field private onedayUrl:Ljava/lang/String;

.field private sec:I

.field private thrddayUrl:Ljava/lang/String;

.field private todayUrl:Ljava/lang/String;

.field private twodayUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sput v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_NO_CLOCK_CALENDAR:I

    .line 87
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CLOCK_DIGITAL_1:I

    .line 88
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CLOCK_DIGITAL_2:I

    .line 89
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CLOCK_DIGITAL_3:I

    .line 90
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CLOCK_DIGITAL_4:I

    .line 91
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CLOCK_ANALOG:I

    .line 92
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->STATE_CALENDAR:I

    .line 134
    sput-boolean v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsNowLoadingWeather:Z

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->main_view:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->min:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->sec:I

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandler:Landroid/os/Handler;

    .line 120
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentCityIdx:I

    .line 122
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->todayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onedayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->twodayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->thrddayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->cityLocation:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDimmed:Z

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPluggedIn:Z

    .line 152
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode_backpress:Z

    .line 157
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_TIMEOUT:J

    .line 160
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_MOVE_DELAY:J

    .line 163
    const v0, -0x12300

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_COLOR:I

    .line 165
    const v0, -0xe7cfe8

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_COLOR_DIM:I

    .line 168
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 169
    const/16 v0, 0x2001

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->SCREEN_SAVER_MOVE_MSG:I

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCreateFinish:Z

    .line 206
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;

    .line 208
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCheckFistConnect:Z

    .line 211
    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBfEventChangeTime:J

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAfEventChangeTiem:J

    .line 213
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    .line 218
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 219
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->ACTION_WEATHER_DATA_UPDATED:Ljava/lang/String;

    .line 220
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 224
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->KEY_CITY_ID:Ljava/lang/String;

    .line 225
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 226
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 227
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->KEY_ICON_NUM:Ljava/lang/String;

    .line 228
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->KEY_CITY_NAME:Ljava/lang/String;

    .line 234
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLastNetAccessable:Z

    .line 242
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->MSG_WEATHER_SETTING_CHANGED:I

    .line 243
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->MSG_WEATHER_DATA_UPDATED:I

    .line 246
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->TEMP_SCALE_FAHRENHEIT:I

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->TEMP_SCALE_CENTIGRADE:I

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 1872
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2275
    new-array v0, v4, [I

    fill-array-data v0, :array_c2

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthNumbers:[I

    .line 2280
    new-array v0, v4, [I

    fill-array-data v0, :array_da

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthNumbers_night:[I

    .line 2287
    new-array v0, v4, [I

    fill-array-data v0, :array_f2

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers:[I

    .line 2292
    new-array v0, v4, [I

    fill-array-data v0, :array_10a

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers_night:[I

    .line 2308
    new-array v0, v4, [I

    fill-array-data v0, :array_122

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTemNumbers:[I

    .line 2588
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    return-void

    .line 2275
    :array_c2
    .array-data 0x4
        0x98t 0x1t 0x2t 0x7ft
        0x9at 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    .line 2280
    :array_da
    .array-data 0x4
        0x99t 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
    .end array-data

    .line 2287
    :array_f2
    .array-data 0x4
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
    .end array-data

    .line 2292
    :array_10a
    .array-data 0x4
        0xact 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xb5t 0x1t 0x2t 0x7ft
    .end array-data

    .line 2308
    :array_122
    .array-data 0x4
        0x15t 0x2t 0x2t 0x7ft
        0x16t 0x2t 0x2t 0x7ft
        0x17t 0x2t 0x2t 0x7ft
        0x18t 0x2t 0x2t 0x7ft
        0x19t 0x2t 0x2t 0x7ft
        0x1at 0x2t 0x2t 0x7ft
        0x1bt 0x2t 0x2t 0x7ft
        0x1ct 0x2t 0x2t 0x7ft
        0x1dt 0x2t 0x2t 0x7ft
        0x1et 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private static AppServiceOff(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 1011
    xor-int/lit8 p0, p0, 0x4

    .line 1012
    return p0
.end method

.method private static AppServiceOn(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 1006
    or-int/lit8 p0, p0, 0x4

    .line 1007
    return p0
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->saveScreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->moveScreenSaver()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->isInCallState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->whereSound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V

    return-void
.end method

.method private checkNetAccessable()Z
    .registers 2

    .prologue
    .line 1021
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/setting/CheckNetworkInfo;->Is3GAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/setting/CheckNetworkInfo;->IsWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1023
    :cond_c
    const/4 v0, 0x1

    .line 1025
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private checkRefresh()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1776
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_weather_city"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1777
    if-nez v2, :cond_e

    .line 1805
    :goto_d
    return v0

    .line 1786
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1787
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1788
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jangth]checkrefresh current time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jangth]checkrefresh mRefreshTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jangth]checkrefresh mBcakupRefreshTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-wide v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a4

    .line 1793
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9b

    .line 1795
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    iput-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    .line 1796
    const-string v0, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jangth]checkrefresh mBcakupRefreshTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v0, "CradleMain"

    const-string v2, "CheckRefresh return true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1799
    goto/16 :goto_d

    .line 1801
    :cond_9b
    const-string v1, "CradleMain"

    const-string v2, "CheckRefresh return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1804
    :cond_a4
    const-string v0, "CradleMain"

    const-string v2, "CheckRefresh return true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1805
    goto/16 :goto_d
.end method

.method private checkWeatehrView()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3171
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 3172
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 3174
    sparse-switch v1, :sswitch_data_28

    .line 3186
    :cond_e
    :goto_e
    return v0

    .line 3176
    :sswitch_f
    const-string v0, "CradleMain"

    const-string v1, "WeatherView Visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const/4 v0, 0x1

    goto :goto_e

    .line 3179
    :sswitch_18
    const-string v1, "CradleMain"

    const-string v2, "WeatherView InVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3182
    :sswitch_20
    const-string v1, "CradleMain"

    const-string v2, "WeatherView Gone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3174
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_f
        0x4 -> :sswitch_18
        0x8 -> :sswitch_20
    .end sparse-switch
.end method

.method private displayWeatherItemData()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1566
    :cond_8
    :goto_8
    return-void

    .line 1476
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1478
    if-eqz v0, :cond_8

    .line 1482
    const-string v0, "weatherCity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weathercity 1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const-string v0, "CradleMain"

    const-string v1, "displayWeatherItemData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_icon"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_temperature"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_unit"

    const-string v3, "C"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1495
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1496
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1499
    if-nez v0, :cond_6e

    .line 1500
    const-string v0, "CradleMain"

    const-string v1, "Weather Image null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1504
    :cond_6e
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1505
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1515
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1516
    const v1, 0x7f0e0075

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1518
    const v2, 0x7f0e0071

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1519
    const v3, 0x7f0e0072

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1520
    const v3, 0x7f0e0073

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1521
    const v4, 0x7f0e0074

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1524
    if-nez v6, :cond_f8

    .line 1525
    const v7, 0x7f020220

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1536
    :goto_ba
    if-gez v5, :cond_ff

    .line 1538
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    :goto_bf
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1554
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1555
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1556
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1558
    if-nez v6, :cond_103

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1530
    :cond_f8
    const v7, 0x7f02021f

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ba

    .line 1540
    :cond_ff
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bf

    .line 1562
    :cond_103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method private doDim()V
    .registers 3

    .prologue
    .line 2485
    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2486
    if-nez v0, :cond_a

    .line 2494
    :goto_9
    return-void

    .line 2489
    :cond_a
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDimmed:Z

    if-eqz v1, :cond_13

    .line 2490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 2492
    :cond_13
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F
    .registers 8
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 2519
    const/4 v3, 0x0

    .line 2520
    .local v3, sum:F
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 2522
    .local v1, paint:Landroid/graphics/Paint;
    if-nez p1, :cond_9

    .line 2523
    const/4 v4, 0x0

    .line 2533
    :goto_8
    return v4

    .line 2526
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [F

    .line 2528
    .local v2, strWidths:[F
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2530
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1f

    .line 2531
    aget v4, v2, v0

    add-float/2addr v3, v4

    .line 2530
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1f
    move v4, v3

    .line 2533
    goto :goto_8
.end method

.method private handleBatteryUpdate(II)V
    .registers 5
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    .line 2062
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_17

    :cond_6
    const/4 v0, 0x1

    .line 2063
    .local v0, pluggedIn:Z
    :goto_7
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_10

    .line 2064
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWakeLock(Z)V

    .line 2066
    if-eqz v0, :cond_10

    .line 2071
    :cond_10
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPluggedIn:Z

    if-eq v0, v1, :cond_16

    .line 2073
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPluggedIn:Z

    .line 2076
    :cond_16
    return-void

    .line 2062
    .end local v0           #pluggedIn:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isInCallState()Z
    .registers 3

    .prologue
    .line 3141
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3142
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private makeWallpaperBitmap()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperType:I

    .line 1238
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_ba

    .line 1283
    :cond_11
    :goto_11
    return-void

    .line 1240
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1243
    :cond_1b
    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_11

    .line 1248
    :pswitch_1e
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1250
    :try_start_24
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_6f

    .line 1252
    :try_start_29
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 1253
    const-string v0, "$$$$$$$$$$$$$$$$$$$$$$$$ walll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ori =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v0, "CradleMain"

    const-string v3, "make bitmap "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_64} :catch_8b

    .line 1260
    if-eqz v2, :cond_11

    .line 1262
    :try_start_66
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_69} :catch_6f

    goto :goto_11

    .line 1263
    :catch_6a
    move-exception v0

    .line 1264
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_11

    .line 1267
    :catch_6f
    move-exception v0

    .line 1268
    const-string v2, "CradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_11

    .line 1257
    :catch_8b
    move-exception v0

    .line 1258
    :try_start_8c
    const-string v0, "out of memeory"

    const-string v3, "out of memory"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_a0

    .line 1260
    if-eqz v2, :cond_11

    .line 1262
    :try_start_95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_98} :catch_6f

    goto/16 :goto_11

    .line 1263
    :catch_9a
    move-exception v0

    .line 1264
    :try_start_9b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9e} :catch_6f

    goto/16 :goto_11

    .line 1260
    :catchall_a0
    move-exception v0

    if-eqz v2, :cond_a6

    .line 1262
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_a6} :catch_6f

    .line 1265
    :cond_a6
    :goto_a6
    :try_start_a6
    throw v0

    .line 1263
    :catch_a7
    move-exception v2

    .line 1264
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_ab} :catch_6f

    goto :goto_a6

    .line 1275
    :pswitch_ac
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b5

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1278
    :cond_b5
    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_11

    .line 1238
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1e
        :pswitch_ac
    .end packed-switch
.end method

.method private moveScreenSaver()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 2769
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->moveScreenSaverTo(II)V

    .line 2770
    return-void
.end method

.method private moveScreenSaverTo(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, -0x2

    .line 2773
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-nez v0, :cond_8

    .line 2806
    :goto_7
    return-void

    .line 2776
    :cond_8
    const-string v0, "CradleMain"

    const-string v1, "moveScreenSaverTo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2781
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2783
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    if-nez v1, :cond_2c

    .line 2784
    const v1, 0x7f0e00b4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    .line 2787
    :cond_2c
    if-ltz p1, :cond_30

    if-gez p2, :cond_55

    .line 2788
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2789
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2790
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRNG:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int p1, v1

    .line 2791
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRNG:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 2798
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v5, v5, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2803
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2001

    const-wide/32 v2, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rem-long/2addr v4, v6

    sub-long v4, v6, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7
.end method

.method private restoreScreen()V
    .registers 3

    .prologue
    .line 2729
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-nez v1, :cond_5

    .line 2766
    :cond_4
    :goto_4
    return-void

    .line 2733
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    .line 2735
    const/4 v0, 0x0

    .line 2737
    .local v0, mode:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    if-eqz v1, :cond_13

    .line 2738
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getMode()I

    move-result v0

    .line 2741
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V

    .line 2742
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupCalendarDays()V

    .line 2743
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCurrentClockView(I)V

    .line 2744
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 2745
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->eventsChanged()V

    .line 2746
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->updateDayNightMode()V

    .line 2747
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getDefaultCityIndex()V

    .line 2754
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->scheduleScreenSaver()V

    .line 2756
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    if-eqz v1, :cond_3b

    .line 2757
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setActivity(Landroid/app/Activity;)V

    .line 2758
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 2761
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    if-eqz v1, :cond_4

    .line 2762
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->setAlertDialg()V

    goto :goto_4
.end method

.method private saveScreen()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2602
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_b

    .line 2710
    :goto_a
    return-void

    .line 2607
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_14

    .line 2608
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 2611
    :cond_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2612
    const-string v1, "android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    if-eqz v0, :cond_2e

    .line 2616
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->setAlertDialg()V

    .line 2619
    :cond_2e
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode_backpress:Z

    .line 2621
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setContentView(I)V

    .line 2623
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2624
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2628
    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2629
    new-array v2, v6, [I

    .line 2630
    if-nez v0, :cond_5a

    .line 2631
    const-string v1, "CradleMain"

    const-string v3, "null oldTimeDate"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_5a
    if-eqz v0, :cond_5f

    .line 2634
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2636
    :cond_5f
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    .line 2637
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2638
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2639
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2640
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2643
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2644
    if-eqz v0, :cond_7b

    .line 2645
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2647
    :cond_7b
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2648
    const v1, 0x7f0e00bf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenDate:Landroid/widget/TextView;

    .line 2649
    const v1, 0x7f0e00c0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenWeatherView:Landroid/view/View;

    .line 2650
    const v1, 0x7f0e006e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    .line 2652
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->displayWeatherItemData()V

    .line 2654
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2657
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_102

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_102

    .line 2659
    if-eqz v0, :cond_c8

    .line 2660
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2661
    :cond_c8
    if-eqz v1, :cond_cd

    .line 2662
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2670
    :cond_cd
    :goto_cd
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2671
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2675
    if-nez v0, :cond_10d

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenWeatherView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2686
    :goto_ea
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2691
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2708
    aget v0, v2, v4

    aget v1, v2, v5

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->moveScreenSaverTo(II)V

    goto/16 :goto_a

    .line 2664
    :cond_102
    if-eqz v0, :cond_107

    .line 2665
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2666
    :cond_107
    if-eqz v1, :cond_cd

    .line 2667
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_cd

    .line 2678
    :cond_10d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenWeatherView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ea
.end method

.method private scheduleScreenSaver()V
    .registers 5

    .prologue
    const/16 v2, 0x2000

    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2723
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2726
    return-void
.end method

.method private setCalendarImage()V
    .registers 3

    .prologue
    .line 3042
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Lcom/sec/android/app/clockpackage/deskclock/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    .line 3044
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->isSixWeeks()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarLine:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3050
    :goto_17
    return-void

    .line 3047
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarLine:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17
.end method

.method private setCurrentClockView(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1286
    packed-switch p1, :pswitch_data_c2

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    :goto_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1316
    const/4 v1, 0x1

    if-ne p1, v1, :cond_99

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1319
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1328
    :goto_41
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    :cond_46
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1332
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1334
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b6

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_b6

    .line 1336
    if-eqz v0, :cond_72

    .line 1337
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1338
    :cond_72
    if-eqz v1, :cond_77

    .line 1339
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1347
    :cond_77
    :goto_77
    return-void

    .line 1289
    :pswitch_78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 1301
    :pswitch_88
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 1322
    :cond_99
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_41

    .line 1341
    :cond_b6
    if-eqz v0, :cond_bb

    .line 1342
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    :cond_bb
    if-eqz v1, :cond_77

    .line 1344
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_77

    .line 1286
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_78
        :pswitch_88
    .end packed-switch
.end method

.method private setHour(I)V
    .registers 6
    .parameter "second"

    .prologue
    .line 2251
    div-int/lit8 v0, p1, 0xa

    .line 2252
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 2255
    .local v1, i2:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    if-nez v0, :cond_1c

    .line 2256
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView1:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    :goto_12
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2265
    return-void

    .line 2258
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2259
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView1:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method private setMinute(I)V
    .registers 6
    .parameter "minute"

    .prologue
    .line 2268
    div-int/lit8 v0, p1, 0xa

    .line 2269
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 2271
    .local v1, i2:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2272
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2273
    return-void
.end method

.method private setWakeLock(Z)V
    .registers 6
    .parameter "hold"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 256
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 257
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x48

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 262
    if-eqz p1, :cond_1b

    .line 263
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 266
    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 267
    return-void

    .line 265
    :cond_1b
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_17
.end method

.method private setWeatherImg(Landroid/widget/ImageView;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x7f02027a

    const v3, 0x7f020276

    const v2, 0x7f020275

    const v1, 0x7f020286

    const v0, 0x7f020278

    .line 1590
    packed-switch p2, :pswitch_data_10a

    .line 1746
    :goto_12
    :pswitch_12
    return-void

    .line 1592
    :pswitch_13
    const v0, 0x7f020274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1596
    :pswitch_1a
    const v0, 0x7f020274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1600
    :pswitch_21
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1604
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1608
    :pswitch_29
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1613
    :pswitch_2d
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1617
    :pswitch_31
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1621
    :pswitch_35
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1625
    :pswitch_39
    const v0, 0x7f020277

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1628
    :pswitch_40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1632
    :pswitch_44
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1636
    :pswitch_48
    const v0, 0x7f020279

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1639
    :pswitch_4f
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1643
    :pswitch_53
    const v0, 0x7f02027b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1647
    :pswitch_5a
    const v0, 0x7f02027b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1651
    :pswitch_61
    const v0, 0x7f02027c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1654
    :pswitch_68
    const v0, 0x7f02027d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1658
    :pswitch_6f
    const v0, 0x7f02027e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1662
    :pswitch_76
    const v0, 0x7f02027e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1666
    :pswitch_7d
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1670
    :pswitch_84
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1674
    :pswitch_8b
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1678
    :pswitch_92
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1682
    :pswitch_9a
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1686
    :pswitch_a2
    const v0, 0x7f020281

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1689
    :pswitch_aa
    const v0, 0x7f020282

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1692
    :pswitch_b2
    const v0, 0x7f020283

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1695
    :pswitch_ba
    const v0, 0x7f020284

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1698
    :pswitch_c2
    const v0, 0x7f020285

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1701
    :pswitch_ca
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1705
    :pswitch_cf
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1709
    :pswitch_d4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1713
    :pswitch_d9
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1717
    :pswitch_de
    const v0, 0x7f020287

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1720
    :pswitch_e6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1724
    :pswitch_eb
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1728
    :pswitch_f0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1732
    :pswitch_f5
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1736
    :pswitch_fa
    const v0, 0x7f02027d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1740
    :pswitch_102
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1590
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_12
        :pswitch_12
        :pswitch_39
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4f
        :pswitch_53
        :pswitch_5a
        :pswitch_61
        :pswitch_68
        :pswitch_6f
        :pswitch_76
        :pswitch_7d
        :pswitch_84
        :pswitch_8b
        :pswitch_92
        :pswitch_9a
        :pswitch_12
        :pswitch_12
        :pswitch_a2
        :pswitch_aa
        :pswitch_b2
        :pswitch_ba
        :pswitch_c2
        :pswitch_ca
        :pswitch_cf
        :pswitch_d4
        :pswitch_d9
        :pswitch_de
        :pswitch_e6
        :pswitch_eb
        :pswitch_f0
        :pswitch_f5
        :pswitch_fa
        :pswitch_102
    .end packed-switch
.end method

.method private setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2537
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F

    move-result v0

    .line 2538
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2541
    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 2542
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2545
    :goto_17
    return-void

    .line 2544
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_17
.end method

.method private setupCalendarDays()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 650
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mStartDay:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    .line 652
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 654
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    add-int/lit8 v0, v1, 0x2

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 658
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    add-int/lit8 v0, v1, 0x3

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 662
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    add-int/lit8 v0, v1, 0x4

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 666
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    add-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 670
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    add-int/lit8 v0, v1, 0x6

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 674
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    add-int/lit8 v0, v1, 0x7

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 678
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    return-void
.end method

.method private setupViews()V
    .registers 8

    .prologue
    const v6, 0x7f0e0093

    const/16 v5, 0x800

    const/16 v4, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_200

    .line 539
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setContentView(I)V

    .line 543
    :goto_2f
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradle:Landroid/widget/FrameLayout;

    .line 545
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 552
    if-eqz v0, :cond_208

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 562
    :goto_5f
    const v0, 0x7f0e0083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleDimOpacity:Landroid/widget/ImageView;

    .line 566
    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    .line 573
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView1:Landroid/view/View;

    .line 574
    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHourView2:Landroid/view/View;

    .line 575
    const v0, 0x7f0e0089

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMinView1:Landroid/view/View;

    .line 576
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMinView2:Landroid/view/View;

    .line 577
    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTimeColon:Landroid/view/View;

    .line 578
    const v0, 0x7f0e0085

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    .line 579
    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    .line 580
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText_kor:Landroid/widget/TextView;

    .line 581
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    .line 582
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v0, 0x7f0e00ae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    .line 590
    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    .line 591
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    .line 592
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    .line 593
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    .line 596
    const v0, 0x7f0e0084

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    .line 597
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    .line 598
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    .line 600
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthClockView:Landroid/widget/TextView;

    .line 602
    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    .line 603
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    if-eqz v0, :cond_172

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 610
    :cond_172
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarLine:Landroid/widget/ImageView;

    .line 612
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCalendarImage()V

    .line 614
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    .line 615
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeather_temperature:Landroid/widget/TextView;

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "isHideShortcut"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsHideShortcut:Z

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setActivity(Landroid/app/Activity;)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "isShortcutDelemode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 621
    if-eqz v0, :cond_1cc

    .line 622
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 623
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDimmed:Z

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    const-string v1, "dodim play"

    const-string v2, "do dim play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->doDim()V

    .line 630
    :cond_1cc
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsHideShortcut:Z

    if-eqz v1, :cond_218

    if-nez v0, :cond_218

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    .line 640
    :goto_1d8
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f6

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getDragLayerChildView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f6

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getDragLayerChildView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 646
    :cond_1f6
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSaverView:Landroid/view/View;

    .line 647
    return-void

    .line 541
    :cond_200
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setContentView(I)V

    goto/16 :goto_2f

    .line 557
    :cond_208
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_5f

    .line 633
    :cond_218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    goto :goto_1d8
.end method

.method private startCurrentLocationWeatherDataService()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1029
    const-string v0, "CradleMain"

    const-string v1, "startCurrentLocationWeatherDataService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->checkNetAccessable()Z

    move-result v0

    if-ne v0, v2, :cond_65

    .line 1031
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLastNetAccessable:Z

    if-nez v0, :cond_65

    .line 1032
    const-string v0, "CradleMain"

    const-string v1, "Send Broadcast to WeatherDaemon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLastNetAccessable:Z

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_app_service_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1038
    const-string v1, "CradleMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aw_daemon_service_key_app_service_status value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->AppServiceOn(I)I

    move-result v0

    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_app_service_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->sendBroadcast(Landroid/content/Intent;)V

    .line 1052
    :cond_65
    return-void
.end method

.method private stopCurrentLocationWeatherDataService()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1056
    const-string v0, "CradleMain"

    const-string v1, "stopCurrentLocationWeatherDataService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v0, "CradleMain"

    const-string v1, "stop weather data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLastNetAccessable:Z

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_app_service_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1063
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->AppServiceOff(I)I

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_app_service_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1066
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    return-void
.end method

.method private toggleSpeakerMode()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2549
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->whereSound()Z

    move-result v0

    if-nez v0, :cond_6d

    move v0, v1

    .line 2550
    :goto_9
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2554
    if-eqz v0, :cond_6f

    .line 2555
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v5, 0x7f020040

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2561
    :goto_19
    const-string v4, "cradle_internal_speaker"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2562
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2564
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_connected"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2567
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2569
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2570
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    if-eqz v0, :cond_78

    .line 2578
    :goto_3f
    const-string v0, "state"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2579
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2580
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cradle_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2582
    const-string v0, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cradle Home Setting, send speaker broadcast state =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_6c
    return-void

    :cond_6d
    move v0, v2

    .line 2549
    goto :goto_9

    .line 2558
    :cond_6f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v5, 0x7f02003f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_19

    :cond_78
    move v2, v1

    .line 2576
    goto :goto_3f
.end method

.method private updateDayNightMode()V
    .registers 5

    .prologue
    const v2, 0x7f020072

    const/4 v3, 0x0

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperType:I

    .line 868
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperType:I

    packed-switch v0, :pswitch_data_d0

    .line 914
    :goto_13
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    if-eqz v0, :cond_af

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWindowTranslucent()V

    .line 929
    :goto_1a
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->whereSound()Z

    move-result v0

    .line 931
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    if-eqz v1, :cond_b4

    .line 932
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 938
    :goto_27
    if-eqz v0, :cond_bc

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 946
    :goto_31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 952
    :goto_49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 955
    return-void

    .line 871
    :pswitch_52
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleDimOpacity:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    goto :goto_13

    .line 877
    :pswitch_61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_74

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 883
    :goto_6c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleDimOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    goto :goto_13

    .line 881
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6c

    .line 887
    :pswitch_7a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_85

    .line 889
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    :cond_85
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    goto :goto_13

    .line 894
    :pswitch_88
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_9d

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_13

    .line 904
    :cond_9d
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleDimOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsLiveWallpaperOn:Z

    goto/16 :goto_13

    .line 918
    :cond_af
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWindowOpaque()V

    goto/16 :goto_1a

    .line 935
    :cond_b4
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_27

    .line 942
    :cond_bc
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_31

    .line 949
    :cond_c6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_49

    .line 868
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_61
        :pswitch_7a
        :pswitch_88
    .end packed-switch
.end method

.method private weahterImageSelect()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3057
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3061
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_current_clock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    .line 3063
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    if-ne v1, v5, :cond_6c

    .line 3064
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 3066
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090051

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 3075
    :goto_31
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v3, v2, :cond_42

    .line 3076
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3077
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3078
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 3079
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3083
    :cond_42
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3084
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3086
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    if-eq v2, v5, :cond_85

    .line 3088
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3089
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3095
    :goto_6b
    return-void

    .line 3069
    :cond_6c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 3071
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090052

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_31

    .line 3091
    :cond_85
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3092
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6b
.end method

.method private whereSound()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3027
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cradle_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3032
    .local v0, sound:I
    if-nez v0, :cond_e

    .line 3033
    const/4 v1, 0x1

    .line 3035
    :cond_e
    return v1
.end method


# virtual methods
.method public ScreenOn()V
    .registers 5

    .prologue
    .line 2079
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->acquire(Landroid/content/Context;)V

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2088
    return-void
.end method

.method public StatusBarControl()V
    .registers 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1003
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 2914
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 2915
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2917
    if-ne v2, v4, :cond_16

    if-nez v1, :cond_16

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-eqz v3, :cond_16

    .line 2919
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->restoreScreen()V

    .line 2938
    :goto_15
    return v0

    .line 2923
    :cond_16
    if-ne v2, v4, :cond_40

    if-nez v1, :cond_40

    .line 2924
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->backPressed()Z

    move-result v1

    .line 2926
    if-nez v1, :cond_40

    .line 2927
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2928
    const-string v2, "isShortcutDelemode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2929
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2930
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDimmed:Z

    .line 2931
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->doDim()V

    .line 2932
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2933
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15

    .line 2938
    :cond_40
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method eventsChanged()V
    .registers 3

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    .line 1351
    .local v0, view:Lcom/sec/android/app/clockpackage/deskclock/MonthView;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->reloadEvents2()V

    .line 1352
    return-void
.end method

.method public getDefaultCityIndex()V
    .registers 5

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_city"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1760
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1762
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-eqz v2, :cond_56

    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 1763
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->weahterImageSelect()V

    .line 1764
    const-string v1, "checkFadingEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->displayWeatherItemData()V

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    :goto_55
    return-void

    .line 1770
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55
.end method

.method getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2497
    .line 2499
    :try_start_2
    const-string v1, "com.sec.android.app.twwallpaperchooser"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_8} :catch_14

    move-result-object v1

    .line 2507
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_wallpaper_resource_id"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2509
    if-nez v2, :cond_20

    .line 2515
    :goto_13
    return-object v0

    .line 2501
    :catch_14
    move-exception v1

    .line 2502
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2503
    const-string v1, "CradleMain"

    const-string v2, "Fail to Get twwallpaperContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2512
    :cond_20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2513
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_13
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .registers 3
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 2370
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 5

    .prologue
    .line 799
    const-string v0, "makeView"

    const-string v1, "makeView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Lcom/sec/android/app/clockpackage/deskclock/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2906
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2907
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getShortcuCutHelper()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->shortCutHelperResult(IILandroid/content/Intent;)V

    .line 2909
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 2320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2322
    packed-switch v0, :pswitch_data_36

    .line 2345
    :goto_c
    return-void

    .line 2327
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    if-eqz v0, :cond_1d

    .line 2328
    const-string v0, "LocationFree"

    const-string v1, "locationFree"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->locationFree()V

    .line 2331
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    .line 2332
    const v0, 0x7f040006

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->overridePendingTransition(II)V

    goto :goto_c

    .line 2338
    :pswitch_2a
    const-string v0, "CradleMain"

    const-string v1, "toggle Speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->toggleSpeakerMode()V

    goto :goto_c

    .line 2322
    nop

    :pswitch_data_36
    .packed-switch 0x7f0e00ad
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 743
    const-string v0, "CradleMain"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getMode()I

    move-result v0

    .line 747
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-eqz v1, :cond_16

    .line 748
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->restoreScreen()V

    .line 761
    :cond_16
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 762
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 763
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentOrientation:I

    .line 764
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 765
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 768
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V

    .line 769
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupCalendarDays()V

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_time_display"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 773
    if-nez v1, :cond_88

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 782
    :goto_64
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 783
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->updateDayNightMode()V

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getDefaultCityIndex()V

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setActivity(Landroid/app/Activity;)V

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->getDragLayerChildView()Landroid/view/View;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_84

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setShortcutHelperView(Landroid/view/View;)V

    .line 793
    :cond_84
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 795
    return-void

    .line 778
    :cond_88
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_current_clock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    .line 779
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCurrentClockView(I)V

    goto :goto_64
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 273
    const-string v0, "CradleMain"

    const-string v3, "onCrate CradleMain"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 278
    const v0, 0x7f040003

    const v3, 0x7f040005

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->overridePendingTransition(II)V

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 287
    :try_start_31
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "startFromTab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;

    .line 289
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checkFirstConnection"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCheckFistConnect:Z
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_4f} :catch_2c2

    .line 296
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 298
    const-string v3, "dockSettings value"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock settings value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cradle_launch"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v3, "dockSettings value"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock settings sound value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cradle_enable"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v0, :cond_dc

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_dc

    .line 309
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    :cond_a9
    :goto_a9
    :pswitch_a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "cradle_launch"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 320
    packed-switch v0, :pswitch_data_2c6

    goto :goto_a9

    .line 322
    :pswitch_cb
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCreateFinish:Z

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    .line 514
    :goto_d0
    return-void

    .line 328
    :pswitch_d1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    .line 329
    const-string v0, "dockMode"

    const-string v4, "on the idle screen"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 353
    :cond_dc
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v3, "Updated.result"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v3, "Alarm.To.Update"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v3, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v3, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v3, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->requestWindowFeature(I)Z

    .line 373
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRNG:Ljava/util/Random;

    .line 375
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setFormat(I)V

    .line 379
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-ne v0, v7, :cond_29a

    move v0, v1

    :goto_151
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, v7}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 382
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentOrientation:I

    .line 393
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/deskclock/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29d

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030014

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->main_view:Landroid/view/View;

    .line 403
    :goto_1ac
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 404
    const-string v3, "isShortcutDelemode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v3

    .line 410
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    const-string v3, "preferences_first_day_of_week"

    const-string v4, "1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mStartDay:I

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupCalendarDays()V

    .line 420
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 426
    :try_start_200
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.voicesearch"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHasVoiceSearch:Z
    :try_end_20d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_200 .. :try_end_20d} :catch_2ac

    .line 433
    :goto_20d
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEnableVoiceSearch:Z

    .line 434
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHasVoiceSearch:Z

    if-eqz v0, :cond_235

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v3, "en_US"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_233

    const-string v3, "en_AU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_233

    const-string v3, "en_GB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    .line 438
    :cond_233
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEnableVoiceSearch:Z

    .line 445
    :cond_235
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->whereSound()Z

    move-result v0

    .line 447
    if-eqz v0, :cond_2b1

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v3, 0x7f020040

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v0, v2

    .line 458
    :goto_244
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    if-eqz v3, :cond_2bb

    .line 459
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 460
    const-string v4, "cradle_connected"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 464
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v4, "state"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    const-string v3, "CradleMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send speaker broadcast state =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 475
    :goto_289
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperChanged:Z

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    .line 499
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;

    goto/16 :goto_d0

    :cond_29a
    move v0, v2

    .line 380
    goto/16 :goto_151

    .line 399
    :cond_29d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030013

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->main_view:Landroid/view/View;

    goto/16 :goto_1ac

    .line 429
    :catch_2ac
    move-exception v0

    .line 430
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHasVoiceSearch:Z

    goto/16 :goto_20d

    .line 453
    :cond_2b1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v3, 0x7f02003f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_244

    .line 472
    :cond_2bb
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_289

    .line 291
    :catch_2c2
    move-exception v0

    goto/16 :goto_4f

    .line 320
    nop

    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_a9
        :pswitch_d1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 2811
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2812
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2814
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 684
    const-string v0, "CradleMain"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCreateFinish:Z

    if-nez v0, :cond_58

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    sget-boolean v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsNowLoadingWeather:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

    if-eqz v0, :cond_27

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->cancelLoadingWeather()V

    .line 694
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_connected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 697
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    if-nez v1, :cond_35

    if-eqz v0, :cond_3c

    .line 704
    :cond_35
    const-string v0, "CradleMain"

    const-string v1, "send speaker on broadcast, on Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3c
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 709
    const-string v1, "cradle_connected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 710
    const-string v1, "isShortcutDelemode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    const-string v0, "CradleMain"

    const-string v1, "delete onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_58
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_61

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    :cond_61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    if-eqz v0, :cond_67

    .line 721
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    .line 724
    :cond_67
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    if-eqz v0, :cond_74

    .line 725
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    .line 726
    const-string v0, "CradleMain"

    const-string v1, "onDestory EventLoad Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    if-eqz v0, :cond_84

    .line 730
    const-string v0, "location free"

    const-string v1, "location free"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->locationFree()V

    .line 734
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_8d

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 737
    :cond_8d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 738
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2860
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2862
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 2901
    :goto_d
    return v3

    .line 2864
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 2865
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2866
    const-string v1, "isShortcutDelemode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2867
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2868
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2869
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2870
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    .line 2871
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDimmed:Z

    .line 2872
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->doDim()V

    goto :goto_d

    .line 2875
    :pswitch_36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2876
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.deskclock.CradleHomeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2878
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 2882
    :pswitch_46
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsHideShortcut:Z

    if-eqz v0, :cond_6a

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2884
    const-string v1, "isHideShortcut"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2885
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    .line 2886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2895
    :goto_5d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "isHideShortcut"

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsHideShortcut:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsHideShortcut:Z

    goto :goto_d

    .line 2889
    :cond_6a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2890
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    .line 2891
    const-string v1, "isHideShortcut"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2892
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5d

    .line 2862
    nop

    :pswitch_data_80
    .packed-switch 0x7f0e0158
        :pswitch_e
        :pswitch_46
        :pswitch_36
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 837
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 838
    const-string v0, "CradleMain"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {}, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->release()V

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 843
    if-eqz v0, :cond_26

    .line 844
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 845
    const-string v0, "CradleMain"

    const-string v1, "DiSABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->restoreScreen()V

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->stopBackgroundThread()V

    .line 855
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->stopCurrentLocationWeatherDataService()V

    .line 856
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2819
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2820
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMenu:Landroid/view/Menu;

    .line 2822
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "isHideShortcut"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2824
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    if-eqz v0, :cond_91

    move v0, v1

    .line 2825
    :goto_14
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_91

    .line 2827
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2828
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2833
    :goto_29
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0e0158

    if-ne v3, v4, :cond_58

    .line 2835
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2836
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2825
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2830
    :cond_48
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_29

    .line 2838
    :cond_50
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_45

    .line 2841
    :cond_58
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0e0159

    if-ne v3, v4, :cond_45

    .line 2842
    if-eqz v2, :cond_7c

    .line 2843
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0b00b6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2845
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02015e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_45

    .line 2847
    :cond_7c
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0b00b5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2849
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02015a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_45

    .line 2855
    :cond_91
    return v5
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 978
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 979
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/16 v7, 0x800

    const/16 v3, 0x400

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1123
    const-string v0, "CradleMain"

    const-string v1, "onResume CradleMain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPluggedIn:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWakeLock(Z)V

    .line 1126
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V

    .line 1127
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupCalendarDays()V

    .line 1128
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->startCurrentLocationWeatherDataService()V

    .line 1129
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->updateWeatherInfo()V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1139
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->StatusBarControl()V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_brightness_value"

    const/high16 v2, 0x42b4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1143
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setBrightness(F)V

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentOrientation:I

    .line 1146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_icon_color"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mColor:I

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1154
    if-eqz v0, :cond_14f

    .line 1155
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 1164
    :goto_68
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1166
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCalendarImage()V

    .line 1173
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->scheduleScreenSaver()V

    .line 1178
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getDefaultCityIndex()V

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1181
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperChanged:Z

    if-nez v1, :cond_8b

    if-eqz v0, :cond_90

    .line 1182
    :cond_8b
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->makeWallpaperBitmap()V

    .line 1183
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperChanged:Z

    .line 1185
    :cond_90
    if-eqz v0, :cond_a6

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1190
    :cond_a6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTimeInterval:I

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    .line 1194
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    .line 1195
    const-string v0, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth] onresume refresh time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mRefreshTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v0, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth] onresume refresh mBcakupRefreshTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mBcakupRefreshTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDate:Ljava/util/Date;

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setActivity(Landroid/app/Activity;)V

    .line 1204
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->updateDayNightMode()V

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_reset_to_default"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1209
    if-eqz v0, :cond_123

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1211
    const-string v1, "cradle_reset_to_default"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradleBottom:Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->reset()V

    .line 1218
    :cond_123
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1220
    if-nez v0, :cond_15f

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    :goto_13c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->startBackgroundThread()V

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->eventsChanged()V

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearFocus()V

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1234
    return-void

    .line 1159
    :cond_14f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_68

    .line 1225
    :cond_15f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_clock"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    .line 1226
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCurrentClockView(I)V

    goto :goto_13c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 974
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 975
    return-void
.end method

.method public onTimeChanged()V
    .registers 16

    .prologue
    const/high16 v14, 0x4000

    const/16 v13, 0x8

    const/4 v5, 0x0

    const/high16 v12, 0x7f08

    const/4 v11, 0x0

    .line 2092
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_d

    .line 2236
    :cond_c
    :goto_c
    return-void

    .line 2096
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 2098
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2099
    const v1, 0x7f0e009b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2101
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    .line 2103
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsNight:Z

    .line 2107
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2a2

    .line 2108
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_227

    .line 2109
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_215

    .line 2110
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    const v3, 0x7f02006f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2121
    :goto_61
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_25d

    .line 2122
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    add-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    .line 2131
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2132
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29b

    .line 2133
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    :goto_91
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v1

    move-object v4, v0

    .line 2154
    :goto_96
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->min:I

    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->sec:I

    .line 2157
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTimeColon:Landroid/view/View;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2158
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2160
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v14, v11, v11, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2165
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setHour(I)V

    .line 2166
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->min:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setMinute(I)V

    .line 2168
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->setBackgroundResource(I)V

    .line 2169
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2170
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2171
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2173
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setDataText(J)V

    .line 2178
    const-string v0, ""

    .line 2180
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d4

    .line 2181
    const-string v0, "%d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2188
    :goto_126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockDate:Landroid/widget/TextView;

    const-string v1, "E dd"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockMonth:Landroid/widget/TextView;

    const-string v1, "MMM, yyyy"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2192
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    const-string v1, "AA"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2197
    const-string v1, "MMMM"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2199
    const-string v1, "dd"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2200
    const v1, 0x7f0e0096

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2201
    const v2, 0x7f0e0097

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2202
    div-int/lit8 v9, v8, 0xa

    .line 2203
    rem-int/lit8 v8, v8, 0xa

    .line 2205
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthNumbers:[I

    aget v9, v10, v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2206
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mMonthNumbers:[I

    aget v1, v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2208
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v14, v11, v11, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2211
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2212
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2215
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v14, v11, v11, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2217
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v14, v11, v11, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2222
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    const-string v0, "AA"

    invoke-static {v0, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2226
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2229
    if-nez v0, :cond_2f1

    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 2112
    :cond_215
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_61

    .line 2115
    :cond_227
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24b

    .line 2116
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_61

    .line 2118
    :cond_24b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_61

    .line 2123
    :cond_25d
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    if-nez v2, :cond_6d

    .line 2124
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    .line 2125
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_289

    .line 2126
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6d

    .line 2128
    :cond_289
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 2135
    :cond_29b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_91

    .line 2139
    :cond_2a2
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAnalogClockAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2140
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mAmPmText:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2142
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2cd

    .line 2144
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_96

    .line 2150
    :cond_2cd
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v0

    move-object v4, v1

    goto/16 :goto_96

    .line 2183
    :cond_2d4
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_126

    .line 2232
    :cond_2f1
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCheckFistConnect:Z

    if-eqz v0, :cond_c

    .line 2233
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->refreshWeather()V

    goto/16 :goto_c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    .line 518
    const-string v0, "kdh_log"

    const-string v1, "CradleMain.java: onTouchEvent "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCradle:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 2714
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mScreenSaverMode:Z

    if-eqz v0, :cond_8

    .line 2715
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->restoreScreen()V

    .line 2718
    :goto_7
    return-void

    .line 2717
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->scheduleScreenSaver()V

    goto :goto_7
.end method

.method public refreshWeather()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1810
    const-string v0, "CradleMain"

    const-string v1, "refreshWeather()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsSetWeatherRefresh:Z

    .line 1814
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsSetWeatherRefresh:Z

    if-ne v0, v2, :cond_21

    .line 1815
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->checkRefresh()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 1825
    :goto_1c
    return-void

    .line 1820
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->displayWeatherItemData()V

    goto :goto_1c

    .line 1823
    :cond_21
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->displayWeatherItemData()V

    goto :goto_1c
.end method

.method reloadCurrentDayEvents()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    if-nez v0, :cond_7

    .line 834
    :goto_6
    return-void

    .line 812
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 813
    .local v9, resources:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_27

    const/4 v8, 0x1

    .line 817
    .local v8, isLandscape:Z
    :goto_15
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->getSelectedColumn()I

    move-result v7

    .line 819
    .local v7, column:I
    if-nez v7, :cond_29

    .line 820
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    goto :goto_6

    .end local v7           #column:I
    .end local v8           #isLandscape:Z
    :cond_27
    move v8, v1

    .line 813
    goto :goto_15

    .line 824
    .restart local v7       #column:I
    .restart local v8       #isLandscape:Z
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->getSelectedMillis()J

    move-result-wide v3

    .line 828
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method protected setBrightness(F)V
    .registers 5
    .parameter

    .prologue
    .line 3019
    const-string v0, "brightness value"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3021
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3022
    const/high16 v1, 0x437f

    div-float v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3023
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3024
    return-void
.end method

.method setCurrentDayEvents(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mEvents:Ljava/util/ArrayList;

    .line 862
    return-void
.end method

.method public setDataText(J)V
    .registers 8
    .parameter

    .prologue
    .line 1828
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1832
    :cond_28
    const-string v0, "MMMM d"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1836
    const-string v0, " (EEEE)"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    :goto_50
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1844
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1870
    :goto_75
    return-void

    .line 1839
    :cond_76
    const-string v0, ", EEEE"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 1847
    :cond_81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1849
    const-string v0, ", E"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    const-string v1, "MMM d"

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1851
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1852
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    .line 1856
    :cond_cf
    const-string v0, "E. MMM. d"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75
.end method

.method setWindowOpaque()V
    .registers 3

    .prologue
    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3160
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3161
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 3162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3163
    return-void
.end method

.method setWindowTranslucent()V
    .registers 3

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3150
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3151
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 3152
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 3153
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 2350
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2355
    :goto_3
    return-void

    .line 2351
    :catch_4
    move-exception v0

    .line 2352
    const v0, 0x7f0b00af

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public updateWeatherInfo()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_city_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_icon_num"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1080
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_temp_scale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1082
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_current_temp"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 1090
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeatherInfo() cityName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeatherInfo() iconNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeatherInfo() tempScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeatherInfo() currentTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_display"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1098
    if-nez v4, :cond_a9

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    :goto_a8
    return-void

    .line 1103
    :cond_a9
    const-string v4, "CradleMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOGWEAHTER =  weahterView visble ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->checkWeatehrView()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1106
    const-string v5, "cradle_weather_city"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1107
    const-string v5, "cradle_saved_weather_icon"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1108
    const-string v1, "cradle_weather_unit"

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1109
    const-string v1, "cradle_saved_weather_temperature"

    float-to-int v2, v3

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1110
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1112
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSelectedCity:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mCityName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1117
    :cond_f7
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->displayWeatherItemData()V

    goto :goto_a8
.end method
