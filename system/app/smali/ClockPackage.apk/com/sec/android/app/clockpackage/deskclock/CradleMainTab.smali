.class public Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
.super Landroid/app/Activity;
.source "CradleMainTab.java"

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

.field public dayMode:Z

.field private hour:I

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

.field private mBigNumbers:[I

.field private mBigNumbers_night:[I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarLine:Landroid/widget/ImageView;

.field private mCalendarView:Landroid/view/View;

.field private mCheckFistConnect:Z

.field private mCheckForceWeatherChecking:Z

.field private mCityName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

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

.field private mIsNight:Z

.field private mIsRefreshOn:Z

.field private mIsSetWeatherRefresh:Z

.field private mLastNetAccessable:Z

.field public mLaunchedFromDock:Z

.field private mMinView1:Landroid/view/View;

.field private mMinView2:Landroid/view/View;

.field private mModeNight:I

.field private mMonthClockView:Landroid/widget/TextView;

.field private mMonthNumbers:[I

.field private mMonthNumbers_night:[I

.field private mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

.field private mPluggedIn:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRNG:Ljava/util/Random;

.field private mRefreshTime:J

.field private mRefreshTimeInterval:I

.field private mScreenSaverMode:Z

.field public mSelectedCity:Ljava/lang/String;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTemNumbers:[I

.field private mTime:Landroid/text/format/Time;

.field private mTimeColon:Landroid/view/View;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWallpaperChanged:Z

.field mWallpaperType:I

.field private mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

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

    .line 130
    sput v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_NO_CLOCK_CALENDAR:I

    .line 131
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CLOCK_DIGITAL_1:I

    .line 132
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CLOCK_DIGITAL_2:I

    .line 133
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CLOCK_DIGITAL_3:I

    .line 134
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CLOCK_DIGITAL_4:I

    .line 135
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CLOCK_ANALOG:I

    .line 136
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->STATE_CALENDAR:I

    .line 179
    sput-boolean v1, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsNowLoadingWeather:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->min:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->sec:I

    .line 128
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    .line 165
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentCityIdx:I

    .line 167
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->todayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onedayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->twodayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->thrddayUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->cityLocation:Ljava/lang/String;

    .line 187
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDimmed:Z

    .line 189
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLaunchedFromDock:Z

    .line 190
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPluggedIn:Z

    .line 197
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mScreenSaverMode:Z

    .line 200
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_TIMEOUT:J

    .line 203
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_MOVE_DELAY:J

    .line 206
    const v0, -0x12300

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_COLOR:I

    .line 208
    const v0, -0xe7cfe8

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_COLOR_DIM:I

    .line 211
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 212
    const/16 v0, 0x2001

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->SCREEN_SAVER_MOVE_MSG:I

    .line 233
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCheckForceWeatherChecking:Z

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCheckFistConnect:Z

    .line 236
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsRefreshOn:Z

    .line 241
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 242
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->ACTION_WEATHER_DATA_UPDATED:Ljava/lang/String;

    .line 243
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 247
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->KEY_CITY_ID:Ljava/lang/String;

    .line 248
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 249
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 250
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->KEY_ICON_NUM:Ljava/lang/String;

    .line 251
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->KEY_CITY_NAME:Ljava/lang/String;

    .line 257
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    .line 258
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLastNetAccessable:Z

    .line 265
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->MSG_WEATHER_SETTING_CHANGED:I

    .line 266
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->MSG_WEATHER_DATA_UPDATED:I

    .line 269
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->TEMP_SCALE_FAHRENHEIT:I

    .line 270
    iput v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->TEMP_SCALE_CENTIGRADE:I

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEvents:Ljava/util/ArrayList;

    .line 1582
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1982
    new-array v0, v4, [I

    fill-array-data v0, :array_b0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers:[I

    .line 1987
    new-array v0, v4, [I

    fill-array-data v0, :array_c8

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers_night:[I

    .line 1994
    new-array v0, v4, [I

    fill-array-data v0, :array_e0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers:[I

    .line 1999
    new-array v0, v4, [I

    fill-array-data v0, :array_f8

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers_night:[I

    .line 2015
    new-array v0, v4, [I

    fill-array-data v0, :array_110

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTemNumbers:[I

    .line 2206
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandy:Landroid/os/Handler;

    return-void

    .line 1982
    nop

    :array_b0
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

    .line 1987
    :array_c8
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

    .line 1994
    :array_e0
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

    .line 1999
    :array_f8
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

    .line 2015
    :array_110
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
    .line 734
    xor-int/lit8 p0, p0, 0x4

    .line 735
    return p0
.end method

.method private static AppServiceOn(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 729
    or-int/lit8 p0, p0, 0x4

    .line 730
    return p0
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V

    return-void
.end method

.method private checkNetAccessable()Z
    .registers 2

    .prologue
    .line 744
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/setting/CheckNetworkInfo;->Is3GAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/setting/CheckNetworkInfo;->IsWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 746
    :cond_c
    const/4 v0, 0x1

    .line 748
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private checkRefresh()Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1471
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_weather_city"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1473
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_refresh_time"

    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1475
    if-nez v2, :cond_18

    .line 1505
    :goto_17
    return v0

    .line 1484
    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1485
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1486
    const-string v2, "CradleMainTab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[jangth]checkrefresh current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v2, "CradleMainTab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[jangth]checkrefresh mRefreshTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const-string v2, "CradleMainTab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[jangth]checkrefresh mReTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string v2, "CradleMainTab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[jangth]checkrefresh mBcakupRefreshTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    cmp-long v2, v5, v3

    if-gez v2, :cond_c4

    .line 1493
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_bb

    .line 1495
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    iput-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    .line 1496
    const-string v0, "CradleMainTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jangth]checkrefresh mBcakupRefreshTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v0, "CradleMainTab"

    const-string v2, "CheckRefresh return true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1499
    goto/16 :goto_17

    .line 1501
    :cond_bb
    const-string v1, "CradleMainTab"

    const-string v2, "CheckRefresh return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1504
    :cond_c4
    const-string v0, "CradleMainTab"

    const-string v2, "CheckRefresh return true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1505
    goto/16 :goto_17
.end method

.method private checkWeatehrView()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1454
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 1455
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1457
    .local v0, visible:I
    sparse-switch v0, :sswitch_data_12

    .line 1466
    .end local v0           #visible:I
    :cond_e
    :goto_e
    :sswitch_e
    return v1

    .line 1459
    .restart local v0       #visible:I
    :sswitch_f
    const/4 v1, 0x1

    goto :goto_e

    .line 1457
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_f
        0x4 -> :sswitch_e
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method private displayWeatherItemData()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_city"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    if-nez v0, :cond_f

    .line 1238
    :cond_e
    :goto_e
    return-void

    .line 1144
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1146
    if-eqz v0, :cond_e

    .line 1168
    const-string v0, "CradleMainTab"

    const-string v1, "displayWeatherItemData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_icon"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_temperature"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_saved_weather_unit"

    const-string v3, "C"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1179
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1180
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1183
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1184
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWeatherImg(Landroid/widget/ImageView;I)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_unit"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1187
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1188
    const v1, 0x7f0e0075

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1190
    const v2, 0x7f0e0071

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1191
    const v3, 0x7f0e0072

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1192
    const v3, 0x7f0e0073

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1193
    const v4, 0x7f0e0074

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1196
    if-nez v6, :cond_db

    .line 1197
    const v7, 0x7f020220

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1208
    :goto_9d
    if-gez v5, :cond_e2

    .line 1210
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    :goto_a2
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1226
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1227
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    if-nez v6, :cond_e6

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1202
    :cond_db
    const v7, 0x7f02021f

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 1212
    :cond_e2
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a2

    .line 1234
    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F
    .registers 8
    .parameter "str"
    .parameter "textView"

    .prologue
    .line 2183
    const/4 v3, 0x0

    .line 2184
    .local v3, sum:F
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 2185
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [F

    .line 2187
    .local v2, strWidths:[F
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1b

    .line 2190
    aget v4, v2, v0

    add-float/2addr v3, v4

    .line 2189
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2192
    :cond_1b
    return v3
.end method

.method private handleBatteryUpdate(II)V
    .registers 5
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1721
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_17

    :cond_6
    const/4 v0, 0x1

    .line 1722
    .local v0, pluggedIn:Z
    :goto_7
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPluggedIn:Z

    if-eq v0, v1, :cond_10

    .line 1723
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWakeLock(Z)V

    .line 1725
    if-eqz v0, :cond_10

    .line 1730
    :cond_10
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPluggedIn:Z

    if-eq v0, v1, :cond_16

    .line 1732
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPluggedIn:Z

    .line 1735
    :cond_16
    return-void

    .line 1721
    .end local v0           #pluggedIn:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private restoreScreen()V
    .registers 2

    .prologue
    .line 2295
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mScreenSaverMode:Z

    if-nez v0, :cond_5

    .line 2317
    :goto_4
    return-void

    .line 2299
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mScreenSaverMode:Z

    .line 2301
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V

    .line 2302
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupCalendarDays()V

    .line 2303
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCurrentClockView(I)V

    .line 2304
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 2305
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->eventsChanged()V

    .line 2306
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->updateDayNightMode()V

    .line 2307
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getDefaultCityIndex()V

    .line 2314
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->scheduleScreenSaver()V

    goto :goto_4
.end method

.method private savePreference()V
    .registers 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    const-string v1, "cradle_day_mode"

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 649
    return-void
.end method

.method private scheduleScreenSaver()V
    .registers 5

    .prologue
    const/16 v2, 0x2000

    .line 2288
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandy:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2292
    return-void
.end method

.method private setCalendarImage()V
    .registers 3

    .prologue
    .line 2451
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Lcom/sec/android/app/clockpackage/deskclock/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->isSixWeeks()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2454
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarLine:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2459
    :goto_17
    return-void

    .line 2456
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarLine:Landroid/widget/ImageView;

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

    .line 972
    packed-switch p1, :pswitch_data_c2

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 998
    :goto_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1002
    const/4 v1, 0x1

    if-ne p1, v1, :cond_99

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1014
    :goto_41
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    :cond_46
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1018
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b6

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_b6

    .line 1022
    if-eqz v0, :cond_72

    .line 1023
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    :cond_72
    if-eqz v1, :cond_77

    .line 1025
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1033
    :cond_77
    :goto_77
    return-void

    .line 975
    :pswitch_78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 987
    :pswitch_88
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 1008
    :cond_99
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1010
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_41

    .line 1027
    :cond_b6
    if-eqz v0, :cond_bb

    .line 1028
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    :cond_bb
    if-eqz v1, :cond_77

    .line 1030
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_77

    .line 972
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_78
        :pswitch_88
    .end packed-switch
.end method

.method private setHour(I)V
    .registers 8
    .parameter "second"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1939
    div-int/lit8 v0, p1, 0xa

    .line 1940
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1941
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 1943
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_22

    if-nez v0, :cond_22

    .line 1944
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    :goto_18
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1968
    :goto_21
    return-void

    .line 1946
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1947
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 1956
    :cond_31
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_48

    if-nez v0, :cond_48

    .line 1957
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1966
    :goto_3e
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_21

    .line 1959
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1960
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e
.end method

.method private setMinute(I)V
    .registers 6
    .parameter "minute"

    .prologue
    .line 1971
    div-int/lit8 v0, p1, 0xa

    .line 1972
    .local v0, i1:I
    rem-int/lit8 v1, p1, 0xa

    .line 1973
    .local v1, i2:I
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1974
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1975
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1980
    :goto_1b
    return-void

    .line 1977
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView1:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers_night:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView2:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBigNumbers_night:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1b
.end method

.method private setWakeLock(Z)V
    .registers 6
    .parameter "hold"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 278
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 279
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x68

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 284
    if-eqz p1, :cond_1b

    .line 285
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 288
    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 289
    return-void

    .line 287
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

    .line 1262
    packed-switch p2, :pswitch_data_10a

    .line 1418
    :goto_12
    :pswitch_12
    return-void

    .line 1264
    :pswitch_13
    const v0, 0x7f020274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1268
    :pswitch_1a
    const v0, 0x7f020274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1272
    :pswitch_21
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1276
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1280
    :pswitch_29
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1285
    :pswitch_2d
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1289
    :pswitch_31
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1293
    :pswitch_35
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1297
    :pswitch_39
    const v0, 0x7f020277

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1300
    :pswitch_40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1304
    :pswitch_44
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1308
    :pswitch_48
    const v0, 0x7f020279

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1311
    :pswitch_4f
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1315
    :pswitch_53
    const v0, 0x7f02027b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1319
    :pswitch_5a
    const v0, 0x7f02027b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1323
    :pswitch_61
    const v0, 0x7f02027c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1326
    :pswitch_68
    const v0, 0x7f02027d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1330
    :pswitch_6f
    const v0, 0x7f02027e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1334
    :pswitch_76
    const v0, 0x7f02027e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1338
    :pswitch_7d
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1342
    :pswitch_84
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1346
    :pswitch_8b
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 1350
    :pswitch_92
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1354
    :pswitch_9a
    const v0, 0x7f020280

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1358
    :pswitch_a2
    const v0, 0x7f020281

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1361
    :pswitch_aa
    const v0, 0x7f020282

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1364
    :pswitch_b2
    const v0, 0x7f020283

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1367
    :pswitch_ba
    const v0, 0x7f020284

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1370
    :pswitch_c2
    const v0, 0x7f020285

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1373
    :pswitch_ca
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1377
    :pswitch_cf
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1381
    :pswitch_d4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1385
    :pswitch_d9
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1389
    :pswitch_de
    const v0, 0x7f020287

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1392
    :pswitch_e6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1396
    :pswitch_eb
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1400
    :pswitch_f0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1404
    :pswitch_f5
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1408
    :pswitch_fa
    const v0, 0x7f02027d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1412
    :pswitch_102
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 1262
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
    .line 2196
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getStringWidth(Ljava/lang/String;Landroid/widget/TextView;)F

    move-result v0

    .line 2197
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2200
    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 2201
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2204
    :goto_17
    return-void

    .line 2203
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_17
.end method

.method private setupCalendarDays()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 466
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mStartDay:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    .line 468
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 470
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    add-int/lit8 v0, v1, 0x2

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    add-int/lit8 v0, v1, 0x3

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 478
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    add-int/lit8 v0, v1, 0x4

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 482
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    add-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 486
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    add-int/lit8 v0, v1, 0x6

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    .line 490
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    add-int/lit8 v0, v1, 0x7

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 494
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method

.method private setupViews()V
    .registers 4

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-eqz v0, :cond_146

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_146

    .line 416
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setContentView(I)V

    .line 419
    :goto_26
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 421
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 424
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView1:Landroid/view/View;

    .line 425
    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHourView2:Landroid/view/View;

    .line 426
    const v0, 0x7f0e0089

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView1:Landroid/view/View;

    .line 427
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMinView2:Landroid/view/View;

    .line 428
    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTimeColon:Landroid/view/View;

    .line 429
    const v0, 0x7f0e0085

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    .line 430
    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    .line 431
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText_kor:Landroid/widget/TextView;

    .line 432
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBackground:Landroid/widget/ImageView;

    .line 433
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mGoExitButton:Landroid/widget/Button;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mGoExitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    .line 438
    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    .line 439
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockTime:Landroid/widget/TextView;

    .line 440
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockDate:Landroid/widget/TextView;

    .line 441
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockMonth:Landroid/widget/TextView;

    .line 442
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockAmPm:Landroid/widget/TextView;

    .line 444
    const v0, 0x7f0e0084

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    .line 445
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    .line 447
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthClockView:Landroid/widget/TextView;

    .line 449
    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    .line 450
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 451
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarLine:Landroid/widget/ImageView;

    .line 452
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCalendarImage()V

    .line 456
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCityName:Landroid/widget/TextView;

    .line 457
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeather_temperature:Landroid/widget/TextView;

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    if-eqz v0, :cond_145

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 463
    :cond_145
    return-void

    .line 418
    :cond_146
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setContentView(I)V

    goto/16 :goto_26
.end method

.method private startCurrentLocationWeatherDataService()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 752
    const-string v0, "CradleMainTab"

    const-string v1, "startCurrentLocationWeatherDataService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->checkNetAccessable()Z

    move-result v0

    if-ne v0, v2, :cond_65

    .line 754
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLastNetAccessable:Z

    if-nez v0, :cond_65

    .line 755
    const-string v0, "CradleMainTab"

    const-string v1, "Send Broadcast to WeatherDaemon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLastNetAccessable:Z

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_app_service_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 762
    const-string v1, "CradleMainTab"

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

    .line 764
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->AppServiceOn(I)I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_app_service_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    :cond_65
    return-void
.end method

.method private stopCurrentLocationWeatherDataService()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 781
    const-string v0, "CradleMainTab"

    const-string v1, "stopCurrentLocationWeatherDataService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v0, "CradleMainTab"

    const-string v1, "stop weather data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLastNetAccessable:Z

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_app_service_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 788
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->AppServiceOff(I)I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_app_service_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->sendBroadcast(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method private updateDayNightMode()V
    .registers 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWallpaperType:I

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 702
    return-void
.end method

.method private weahterImageSelect()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2470
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_current_clock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    .line 2472
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    if-ne v1, v5, :cond_6c

    .line 2473
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 2475
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09004c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2484
    :goto_31
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v3, v2, :cond_42

    .line 2485
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2486
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2487
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 2488
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2492
    :cond_42
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2493
    const v1, 0x7f0e0078

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2495
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    if-eq v2, v5, :cond_85

    .line 2497
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2498
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2504
    :goto_6b
    return-void

    .line 2478
    :cond_6c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 2480
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09004d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_31

    .line 2500
    :cond_85
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2501
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6b
.end method


# virtual methods
.method eventsChanged()V
    .registers 3

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_f

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    .line 1038
    .local v0, view:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->reloadEvents2()V

    .line 1040
    .end local v0           #view:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;
    :cond_f
    return-void
.end method

.method public getDefaultCityIndex()V
    .registers 5

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_city"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    .line 1434
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1436
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    if-eqz v2, :cond_6f

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    .line 1437
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->weahterImageSelect()V

    .line 1438
    const-string v1, "checkFadingEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1443
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->refreshWeather()V

    .line 1444
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->displayWeatherItemData()V

    .line 1449
    :goto_52
    const-string v0, "CradleMainTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultCityIndex  mWeatherView =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->checkWeatehrView()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void

    .line 1446
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .registers 3
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 2084
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 5

    .prologue
    .line 609
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Lcom/sec/android/app/clockpackage/deskclock/Navigator;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setSelectedTime(Landroid/text/format/Time;)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthView:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 2027
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2029
    packed-switch v1, :pswitch_data_38

    .line 2059
    :goto_c
    :pswitch_c
    return-void

    .line 2034
    :pswitch_d
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.deskclock.CradleMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    const-string v1, "startFromTab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2038
    const-string v1, "checkFirstConnection"

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCheckFistConnect:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2039
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 2046
    :pswitch_25
    const-string v0, "CradleMainTab"

    const-string v1, "toggle Speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2050
    :pswitch_2d
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.deskclock.CradleMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 2029
    :pswitch_data_38
    .packed-switch 0x7f0e00ad
        :pswitch_d
        :pswitch_25
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_2d
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentOrientation:I

    .line 554
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHasVoiceSearch:Z

    if-eqz v0, :cond_33

    .line 555
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 556
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 559
    :cond_31
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEnableVoiceSearch:Z

    .line 566
    :cond_33
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 569
    const-string v1, "SPH-D710"

    const-string v2, "SGH-I927"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentOrientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 571
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 572
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentOrientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 579
    :goto_56
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-ne v1, v2, :cond_66

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_7d

    .line 581
    :cond_66
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 584
    :cond_7d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupCalendarDays()V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 589
    if-nez v0, :cond_ba

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :goto_9c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->updateDayNightMode()V

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getDefaultCityIndex()V

    .line 602
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCheckForceWeatherChecking:Z

    .line 603
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 605
    return-void

    .line 574
    :cond_ab
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 575
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 576
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_56

    .line 594
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_clock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    .line 595
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCurrentClockView(I)V

    goto :goto_9c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 295
    const-string v6, "CradleMainTab"

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v6, "Updated.result"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v6, "Alarm.To.Update"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRNG:Ljava/util/Random;

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v9, -0x3

    invoke-virtual {v6, v9}, Landroid/view/Window;->setFormat(I)V

    .line 321
    const-string v6, "uimode"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mUiModeManager:Landroid/app/UiModeManager;

    .line 322
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_137

    move v6, v7

    :goto_7f
    iput-boolean v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLaunchedFromDock:Z

    .line 323
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentOrientation:I

    .line 327
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/deskclock/Controller;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    .line 329
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/clockpackage/deskclock/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    .line 335
    .local v4, time:J
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    .line 336
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 337
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 339
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 341
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferences_first_day_of_week"

    const-string v9, "1"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mStartDay:I

    .line 343
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupCalendarDays()V

    .line 345
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    .line 347
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 348
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 351
    :try_start_f4
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v9, "com.google.android.voicesearch"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 353
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHasVoiceSearch:Z
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f4 .. :try_end_101} :catch_13a

    .line 358
    :goto_101
    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEnableVoiceSearch:Z

    .line 359
    iget-boolean v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHasVoiceSearch:Z

    if-eqz v6, :cond_129

    .line 360
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, country:Ljava/lang/String;
    const-string v6, "en_US"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_127

    const-string v6, "en_AU"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_127

    const-string v6, "en_GB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 363
    :cond_127
    iput-boolean v7, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEnableVoiceSearch:Z

    .line 367
    .end local v0           #country:Ljava/lang/String;
    :cond_129
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    .line 369
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;

    .line 386
    return-void

    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #time:J
    :cond_137
    move v6, v8

    .line 322
    goto/16 :goto_7f

    .line 354
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #time:J
    :catch_13a
    move-exception v1

    .line 355
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHasVoiceSearch:Z

    goto :goto_101
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 2376
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2377
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2379
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 499
    const-string v0, "CradleMainTab"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-boolean v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsNowLoadingWeather:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

    if-eqz v0, :cond_16

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeather:Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->cancelLoadingWeather()V

    .line 507
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_connected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 511
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLaunchedFromDock:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_46

    .line 514
    :cond_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 516
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    const-string v0, "CradleMainTab"

    const-string v1, "send speaker on broadcast, on Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_46
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLaunchedFromDock:Z

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 526
    const-string v1, "cradle_connected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v1, "cradle_weather_refresh_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_64

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    if-eqz v0, :cond_72

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    .line 540
    const-string v0, "CradleMainTab"

    const-string v1, "onDestory EventLoad Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_72
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_7b

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 546
    :cond_7b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 547
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2385
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2387
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2388
    packed-switch v0, :pswitch_data_1c

    .line 2397
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 2390
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2391
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.deskclock.CradleHomeSettingsTab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2393
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 2388
    :pswitch_data_1c
    .packed-switch 0x7f0e015b
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 652
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 653
    const-string v0, "CradleMainTab"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->restoreScreen()V

    .line 668
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->savePreference()V

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->stopBackgroundThread()V

    .line 683
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->stopCurrentLocationWeatherDataService()V

    .line 685
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 726
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 848
    const-string v0, "CradleMainTab"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 851
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V

    .line 852
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupCalendarDays()V

    .line 853
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->startCurrentLocationWeatherDataService()V

    .line 855
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->updateWeatherInfo()V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 864
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_44

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 872
    :cond_44
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPluggedIn:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWakeLock(Z)V

    .line 874
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->scheduleScreenSaver()V

    .line 877
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getDefaultCityIndex()V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 881
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWallpaperChanged:Z

    if-nez v1, :cond_5d

    if-eqz v0, :cond_5f

    .line 882
    :cond_5d
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWallpaperChanged:Z

    .line 884
    :cond_5f
    if-eqz v0, :cond_75

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 889
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 891
    if-nez v0, :cond_101

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCalendarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDigitalClockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 900
    :goto_8e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTimeInterval:I

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    .line 904
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    .line 906
    const-string v0, "CradleMainTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth] onresume refresh time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mRefreshTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v0, "CradleMainTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth] onresume refresh mBcakupRefreshTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mBcakupRefreshTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDate:Ljava/util/Date;

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 910
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->updateDayNightMode()V

    .line 911
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCalendarImage()V

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->startBackgroundThread()V

    .line 913
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->eventsChanged()V

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentOrientation:I

    .line 917
    return-void

    .line 896
    :cond_101
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_current_clock"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    .line 897
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCurrentClockView:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCurrentClockView(I)V

    goto/16 :goto_8e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 722
    return-void
.end method

.method public onTimeChanged()V
    .registers 13

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mScreenSaverMode:Z

    if-eqz v0, :cond_5

    .line 1936
    :cond_4
    :goto_4
    return-void

    .line 1743
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1745
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1746
    const v1, 0x7f0e009b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1748
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    .line 1750
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsNight:Z

    .line 1752
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_mode_night"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mModeNight:I

    .line 1753
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mModeNight:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25a

    .line 1754
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    .line 1767
    :goto_3f
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2ff

    .line 1768
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_283

    .line 1769
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-nez v2, :cond_271

    .line 1770
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const v3, 0x7f02006f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1781
    :goto_6d
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2b9

    .line 1782
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    add-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    .line 1791
    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockAmPm:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1792
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-eqz v2, :cond_2f7

    .line 1793
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    :goto_a0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v1

    move-object v4, v0

    .line 1816
    :goto_a6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->min:I

    .line 1817
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->sec:I

    .line 1819
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_339

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTimeColon:Landroid/view/View;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1823
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v1, v2, v5, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1834
    :goto_e2
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setHour(I)V

    .line 1835
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->min:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setMinute(I)V

    .line 1837
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35c

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->setBackgroundResource(I)V

    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1855
    :goto_126
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setDataText(J)V

    .line 1860
    const-string v0, ""

    .line 1862
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_396

    .line 1863
    const-string v0, "%d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1870
    :goto_14d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockDate:Landroid/widget/TextView;

    const-string v1, "E dd"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockMonth:Landroid/widget/TextView;

    const-string v1, "MMM, yyyy"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockAmPm:Landroid/widget/TextView;

    const-string v1, "AA"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1879
    const-string v1, "MMMM"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    const-string v1, "dd"

    invoke-static {v1, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1882
    const v1, 0x7f0e0096

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1883
    const v2, 0x7f0e0097

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1884
    div-int/lit8 v9, v8, 0xa

    .line 1885
    rem-int/lit8 v8, v8, 0xa

    .line 1887
    iget-boolean v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3b4

    .line 1888
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers:[I

    aget v9, v10, v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1889
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers:[I

    aget v1, v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1891
    const/high16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1901
    :goto_1ef
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d9

    .line 1902
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1904
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1907
    const/high16 v0, 0x4000

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1909
    const/high16 v0, 0x4000

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v0, v1, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1922
    :goto_232
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1923
    const-string v0, "AA"

    invoke-static {v0, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_display"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1929
    if-nez v0, :cond_405

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1755
    :cond_25a
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mModeNight:I

    if-nez v2, :cond_26c

    .line 1756
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsNight:Z

    if-eqz v2, :cond_267

    .line 1757
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    goto/16 :goto_3f

    .line 1759
    :cond_267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    goto/16 :goto_3f

    .line 1762
    :cond_26c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    goto/16 :goto_3f

    .line 1772
    :cond_271
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 1775
    :cond_283
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-nez v2, :cond_2a7

    .line 1776
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6d

    .line 1778
    :cond_2a7
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 1783
    :cond_2b9
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    if-nez v2, :cond_79

    .line 1784
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    .line 1785
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-nez v2, :cond_2e5

    .line 1786
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_79

    .line 1788
    :cond_2e5
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText_kor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_79

    .line 1795
    :cond_2f7
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a0

    .line 1800
    :cond_2ff
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1801
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAmPmText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1803
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

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

    if-nez v2, :cond_330

    .line 1805
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_a6

    .line 1811
    :cond_330
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v0

    move-object v4, v1

    goto/16 :goto_a6

    .line 1827
    :cond_339
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTimeColon:Landroid/view/View;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1828
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v5, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_e2

    .line 1846
    :cond_35c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClock:Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->setBackgroundResource(I)V

    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1849
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mAnalogClockMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_126

    .line 1865
    :cond_396
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_14d

    .line 1894
    :cond_3b4
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers_night:[I

    aget v9, v10, v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1895
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mMonthNumbers_night:[I

    aget v1, v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1896
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1898
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1ef

    .line 1912
    :cond_3d9
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1914
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1917
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1918
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v1, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_232

    .line 1932
    :cond_405
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCheckFistConnect:Z

    if-eqz v0, :cond_4

    .line 1933
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->refreshWeather()V

    goto/16 :goto_4
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mScreenSaverMode:Z

    if-eqz v0, :cond_8

    .line 2281
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->restoreScreen()V

    .line 2284
    :goto_7
    return-void

    .line 2283
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->scheduleScreenSaver()V

    goto :goto_7
.end method

.method public refreshWeather()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1510
    const-string v0, "CradleMainTab"

    const-string v1, "refreshWeather()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsSetWeatherRefresh:Z

    .line 1513
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mIsSetWeatherRefresh:Z

    if-ne v0, v2, :cond_21

    .line 1514
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->checkRefresh()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 1526
    :goto_1c
    return-void

    .line 1521
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->displayWeatherItemData()V

    goto :goto_1c

    .line 1524
    :cond_21
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->displayWeatherItemData()V

    goto :goto_1c
.end method

.method reloadCurrentDayEvents()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 619
    .local v9, resources:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_22

    const/4 v8, 0x1

    .line 622
    .local v8, isLandscape:Z
    :goto_10
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getSelectedColumn()I

    move-result v7

    .line 624
    .local v7, column:I
    if-nez v7, :cond_24

    .line 625
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 642
    :cond_21
    :goto_21
    return-void

    .end local v7           #column:I
    .end local v8           #isLandscape:Z
    :cond_22
    move v8, v1

    .line 619
    goto :goto_10

    .line 629
    .restart local v7       #column:I
    .restart local v8       #isLandscape:Z
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getSelectedMillis()J

    move-result-wide v3

    .line 633
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    if-eqz v0, :cond_21

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_21
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
    .line 690
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEvents:Ljava/util/ArrayList;

    .line 691
    return-void
.end method

.method public setDataText(J)V
    .registers 8
    .parameter

    .prologue
    .line 1529
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

    .line 1533
    :cond_28
    const-string v0, "MMMM d"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1535
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

    .line 1537
    const-string v0, " (EEEE)"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1543
    :goto_50
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1545
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

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

    .line 1580
    :goto_75
    return-void

    .line 1540
    :cond_76
    const-string v0, ", EEEE"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 1548
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

    .line 1550
    const-string v0, ", E"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    const-string v1, "MMM d"

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1554
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

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

    .line 1559
    :cond_cf
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ec

    .line 1560
    const-string v0, "MMM d, E."

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    .line 1564
    :cond_ec
    const-string v0, "E. MMM. d"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 2064
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2069
    :goto_3
    return-void

    .line 2065
    :catch_4
    move-exception v0

    .line 2066
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

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_city_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_icon_num"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_temp_scale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_current_temp"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 815
    const-string v4, "CradleMainTab"

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

    .line 816
    const-string v4, "CradleMainTab"

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

    .line 817
    const-string v4, "CradleMainTab"

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

    .line 818
    const-string v4, "CradleMainTab"

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

    .line 820
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_display"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 823
    if-nez v4, :cond_a9

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mWeatherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :goto_a8
    return-void

    .line 828
    :cond_a9
    const-string v4, "CradleMainTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOGWEAHTER =  weahterView visble ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->checkWeatehrView()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 831
    const-string v5, "cradle_weather_city"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 832
    const-string v5, "cradle_saved_weather_icon"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 833
    const-string v1, "cradle_weather_unit"

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 834
    const-string v1, "cradle_saved_weather_temperature"

    float-to-int v2, v3

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 835
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 837
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCityName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mSelectedCity:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mCityName:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setWeatherLocationFadingEffect(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 843
    :cond_f7
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->displayWeatherItemData()V

    goto :goto_a8
.end method
