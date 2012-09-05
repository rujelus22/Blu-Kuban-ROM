.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.super Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;
    }
.end annotation


# static fields
.field private static mCityName:Ljava/lang/String;

.field private static mCityNameBmp:Landroid/graphics/Bitmap;

.field private static mConnManager:Landroid/net/ConnectivityManager;

.field private static mCurLoc:Landroid/location/Location;

.field private static mLastLocation:Landroid/location/Location;

.field private static mLastUpdatedTime:J

.field private static mLocationMgr:Landroid/location/LocationManager;

.field public static mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

.field private static mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

.field private static mNETTimer:Ljava/util/Timer;

.field private static mPref:Landroid/content/SharedPreferences;

.field private static mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

.field public static mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

.field private static mbCityNameChange:Z

.field private static mbImageSetChange:Z

.field private static mfInterval:J

.field private static mnCurMoonPhase:I

.field private static mnCurWeather:I

.field private static mnPrevMoonPhase:I

.field private static mnPrevWeather:I

.field private static final moonIsReflect:[Z

.field private static final moonResouceID:[I


# instance fields
.field private final TESTMODE:Z

.field private mContext:Landroid/content/Context;

.field private mIsAccuweatherDaemon:Z

.field private mLoadedImageset:I

.field private mLoadedImagesetDayNight:Z

.field mLocationHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

.field private mUnlock:Z

.field mWeatherHandler:Landroid/os/Handler;

.field private mbImageSetLoading:Z

.field private mbIsNight:Z

.field private mbIsPreview:Z

.field private mbLastUpdateSuccess:Z

.field private mbManyClouds:Z

.field private mbManySnows:Z

.field private mbSurfaceCreated:Z

.field private mnHighTemp:I

.field private mnLastUpdateFailureCount:I

.field private mnLowTemp:I

.field private mnSunriseTime:I

.field private mnSunsetTime:I

.field private prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

.field private prevWeatherChangedDone:Z

.field private prevWeatherStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x1b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetChange:Z

    .line 104
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    .line 106
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    .line 112
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    .line 114
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    .line 116
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    .line 118
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    .line 120
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 122
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 124
    sput-wide v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    .line 126
    sput-wide v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    .line 128
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 130
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    .line 133
    const-string v0, ""

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    .line 135
    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    .line 137
    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevMoonPhase:I

    .line 148
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbCityNameChange:Z

    .line 175
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityNameBmp:Landroid/graphics/Bitmap;

    .line 209
    new-array v0, v3, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->moonResouceID:[I

    .line 219
    new-array v0, v3, [Z

    fill-array-data v0, :array_82

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->moonIsReflect:[Z

    return-void

    .line 209
    nop

    :array_48
    .array-data 0x4
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 219
    :array_82
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;-><init>()V

    .line 94
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->TESTMODE:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbLastUpdateSuccess:Z

    .line 110
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    .line 139
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImageset:I

    .line 142
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImagesetDayNight:Z

    .line 144
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetLoading:Z

    .line 146
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbSurfaceCreated:Z

    .line 154
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z

    .line 156
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    .line 158
    const/16 v0, 0x708

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    .line 160
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnHighTemp:I

    .line 162
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLowTemp:I

    .line 165
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z

    .line 167
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z

    .line 169
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z

    .line 171
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I

    .line 309
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    .line 311
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z

    .line 312
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D0_NOTHING:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherStartTime:J

    .line 314
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherChangedDone:Z

    .line 1099
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationHandler:Landroid/os/Handler;

    .line 1117
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$2;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$2;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    .line 1937
    return-void
.end method

.method private AppServiceOff(I)I
    .registers 2
    .parameter "value"

    .prologue
    .line 476
    xor-int/lit8 p1, p1, 0x2

    .line 477
    return p1
.end method

.method private AppServiceOn(I)I
    .registers 2
    .parameter "value"

    .prologue
    .line 471
    or-int/lit8 p1, p1, 0x2

    .line 472
    return p1
.end method

.method static synthetic access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Landroid/location/Location;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->locationUpdated(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkNetAccessable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z

    return p1
.end method

.method static synthetic access$1200()J
    .registers 2

    .prologue
    .line 91
    sget-wide v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    sput-wide p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    return-wide p0
.end method

.method static synthetic access$1300()J
    .registers 2

    .prologue
    .line 91
    sget-wide v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->stopCurrentLocationWeatherDataService()V

    return-void
.end method

.method static synthetic access$1800()I
    .registers 1

    .prologue
    .line 91
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    return p0
.end method

.method static synthetic access$1902(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    return-object p1
.end method

.method static synthetic access$200()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherStartTime:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherChangedDone:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z

    return p1
.end method

.method static synthetic access$2300()I
    .registers 1

    .prologue
    .line 91
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    return p0
.end method

.method static synthetic access$2400()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    return p1
.end method

.method static synthetic access$2602(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    return p1
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    return v0
.end method

.method static synthetic access$3200()[I
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->moonResouceID:[I

    return-object v0
.end method

.method static synthetic access$3300()[Z
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->moonIsReflect:[Z

    return-object v0
.end method

.method static synthetic access$3400()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityNameBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityNameBmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetLoading:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetLoading:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImageset:I

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImageset:I

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImagesetDayNight:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImagesetDayNight:Z

    return p1
.end method

.method static synthetic access$3800()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetChange:Z

    return v0
.end method

.method static synthetic access$3900()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbCityNameChange:Z

    return v0
.end method

.method static synthetic access$400()Landroid/location/Location;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkWeather()V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z

    return v0
.end method

.method static synthetic access$600()Landroid/location/LocationManager;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->showLocationConsentAlertDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->startCurrentLocationWeatherDataService()V

    return-void
.end method

.method private checkIsDayOrNight()Z
    .registers 4

    .prologue
    .line 1007
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int v0, v1, v2

    .line 1010
    .local v0, nCurTime:I
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget v1, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    add-int/lit8 v1, v1, -0x1e

    if-lt v0, v1, :cond_28

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget v1, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    add-int/lit8 v1, v1, 0x1e

    if-gt v0, v1, :cond_28

    .line 1011
    const/4 v1, 0x0

    .line 1015
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x1

    goto :goto_27
.end method

.method private checkNetAccessable()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1716
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1717
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1719
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1720
    const-string v1, "SecretWallpaper"

    const-string v2, "WiFi Network is available..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :goto_21
    return v0

    .line 1722
    :cond_22
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1723
    const-string v1, "SecretWallpaper"

    const-string v2, "Mobile Network is available..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1725
    :cond_36
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1726
    const-string v0, "SecretWallpaper"

    const-string v2, "WiFi Network is connecting...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1727
    goto :goto_21

    .line 1728
    :cond_45
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1729
    const-string v0, "SecretWallpaper"

    const-string v2, "Mobile Network is connecting...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1730
    goto :goto_21

    :cond_54
    move v0, v1

    .line 1733
    goto :goto_21
.end method

.method private checkWeather()V
    .registers 6

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1249
    const-string v0, "SecretWallpaper"

    const-string v1, "AccuweatherDaemon - checkWeather"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :goto_c
    return-void

    .line 1253
    :cond_d
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    .line 1254
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevMoonPhase:I

    .line 1256
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkNetAccessable()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1259
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getWeatherText()Ljava/lang/String;

    move-result-object v0

    .line 1261
    const-string v1, "SecretWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWeatherText: Current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v3

    sget v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Previous: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v3

    sget v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v1, "CSP_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1267
    const-string v1, "SecretWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get Weather data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    goto :goto_c

    .line 1273
    :cond_78
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    if-ne v0, v1, :cond_84

    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevMoonPhase:I

    if-eq v0, v1, :cond_101

    .line 1275
    :cond_84
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherThread Weather changed : Prev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    sget v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    sget v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1286
    :try_start_bc
    const-string v1, "last_weather_conditon_num_2"

    sget v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1287
    const-string v1, "last_moon_phase_num_2"

    sget v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1288
    const-string v1, "last_sunrise_time_2"

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1289
    const-string v1, "last_sunset_time_2"

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_db} :catch_fc

    .line 1297
    :goto_db
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 1298
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1299
    const/16 v1, 0x14a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1300
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1302
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    .line 1304
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevWeather:I

    .line 1305
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnPrevMoonPhase:I

    goto/16 :goto_c

    .line 1291
    :catch_fc
    move-exception v0

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_db

    .line 1308
    :cond_101
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weather no changed : Cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    sget v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1313
    :cond_123
    const-string v0, "SecretWallpaper"

    const-string v1, "CheckWeather failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    goto/16 :goto_c
.end method

.method public static getSurfaceCreated()Z
    .registers 1

    .prologue
    .line 863
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-boolean v0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbSurfaceCreated:Z

    return v0
.end method

.method private getWeatherText()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1349
    const-string v0, ""

    .line 1351
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v0, :cond_149

    .line 1355
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    if-nez v0, :cond_15

    .line 1357
    const-string v0, "SecretWallpaper"

    const-string v1, "mCurLoc is invaild"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string v0, "CSP_ERROR: Invaild Location"

    .line 1453
    :goto_14
    return-object v0

    .line 1362
    :cond_15
    :try_start_15
    new-instance v1, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://samsungmobile.accu-weather.com/widget/samsungmobile/weather-data.asp?latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_56} :catch_110

    move-result v3

    .line 1365
    const/4 v0, 0x0

    .line 1370
    :try_start_58
    const-string v4, ""

    if-eq v2, v4, :cond_c2

    if-eqz v2, :cond_c2

    .line 1372
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 1373
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 1374
    if-eqz v1, :cond_72

    .line 1375
    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1383
    :cond_72
    :goto_72
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1384
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1387
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v1

    if-nez v1, :cond_85

    .line 1389
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1392
    :cond_85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_88} :catch_cb

    move-result v1

    .line 1404
    const/4 v2, 0x0

    .line 1405
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_da

    .line 1406
    :try_start_8e
    const-string v1, "SecretWallpaper"

    const-string v2, "CONNECTING TO WEATHER SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_110

    .line 1424
    :try_start_95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1426
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1429
    :goto_a2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_13f

    .line 1430
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b2} :catch_b3

    goto :goto_a2

    .line 1436
    :catch_b3
    move-exception v0

    .line 1437
    :try_start_b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1438
    const-string v0, "SecretWallpaper"

    const-string v1, "CSP_ERROR: failed to parse weather data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v0, "CSP_ERROR: failed to parse weather data"
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c0} :catch_110

    goto/16 :goto_14

    .line 1379
    :cond_c2
    if-eqz v1, :cond_72

    .line 1380
    :try_start_c4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ca} :catch_cb

    goto :goto_72

    .line 1394
    :catch_cb
    move-exception v0

    .line 1396
    :try_start_cc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1398
    const-string v0, "SecretWallpaper"

    const-string v1, "Error!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v0, "ERROR!!!!!!!!!!!!"

    goto/16 :goto_14

    .line 1409
    :cond_da
    const-string v1, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ABNORMAL RESPONSE CODE: WEATHER SERVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1411
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1414
    :goto_ff
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_11f

    .line 1415
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1416
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_10f} :catch_110

    goto :goto_ff

    .line 1443
    :catch_110
    move-exception v0

    .line 1444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1445
    const-string v0, "SecretWallpaper"

    const-string v1, "CSP_ERROR: failed to get connection to weather data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v0, "CSP_ERROR: failed to get connection to weather data"

    goto/16 :goto_14

    .line 1418
    :cond_11f
    :try_start_11f
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorStream:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string v0, "CSP_ERROR: abnormal server response"
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_13d} :catch_110

    goto/16 :goto_14

    .line 1434
    :cond_13f
    :try_start_13f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->parseWeatherText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_146} :catch_b3

    move-result-object v0

    goto/16 :goto_14

    .line 1450
    :cond_149
    const-string v0, "CSP_ERROR: there is a accuweather daemon"

    goto/16 :goto_14
.end method

.method private initLocationService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v0, :cond_5a

    .line 482
    const-string v0, "SecretWallpaper"

    const-string v1, "initLocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_20

    .line 485
    const-string v0, "SecretWallpaper"

    const-string v1, "mLocationMgr not null, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 487
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    .line 490
    :cond_20
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    if-eqz v0, :cond_2d

    .line 491
    const-string v0, "SecretWallpaper"

    const-string v1, "mNetListener not null, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    .line 495
    :cond_2d
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3f

    .line 496
    const-string v0, "SecretWallpaper"

    const-string v1, "mNetTimer not null, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 498
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 501
    :cond_3f
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    .line 502
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    .line 503
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 507
    :goto_59
    return-void

    .line 505
    :cond_5a
    const-string v0, "SecretWallpaper"

    const-string v1, "AccuweatherDaemon - initLocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method private initService()V
    .registers 4

    .prologue
    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    invoke-direct {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    .line 389
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 392
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    .line 393
    sput-object p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    .line 394
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.wallpaper.livepicker.SET_LIVE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    invoke-direct {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    .line 403
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5f

    .line 406
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->startCurrentLocationWeatherDataService()V

    .line 411
    :goto_55
    const-string v1, "com.sec.ccl.csp.app.secretwallpaper"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    .line 414
    return-void

    .line 408
    :cond_5f
    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    goto :goto_55
.end method

.method private locationUpdated(Landroid/location/Location;Ljava/lang/String;)V
    .registers 8
    .parameter "location"
    .parameter "provider"

    .prologue
    .line 948
    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v1, :cond_78

    .line 950
    const-string v1, "network"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 951
    const-string v1, "SecretWallpaper"

    const-string v2, "NETWORK Location updated..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_13
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v1, :cond_1e

    .line 955
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 958
    :cond_1e
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2a

    .line 959
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 960
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 963
    :cond_2a
    if-nez p1, :cond_34

    .line 966
    const-string v1, "SecretWallpaper"

    const-string v2, "Null Location updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_33
    return-void

    .line 970
    :cond_34
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    if-nez v1, :cond_58

    .line 971
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->saveLocation(Landroid/location/Location;)V

    .line 978
    :cond_3b
    :goto_3b
    sput-object p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    .line 979
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    .line 982
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 983
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 984
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    const-string v1, "SecretWallpaper"

    const-string v2, " Location Information updated..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 972
    .end local v0           #msg:Landroid/os/Message;
    :cond_58
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_74

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3b

    .line 974
    :cond_74
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->saveLocation(Landroid/location/Location;)V

    goto :goto_3b

    .line 988
    :cond_78
    const-string v1, "SecretWallpaper"

    const-string v2, "AccuweatherDaemon - locationUpdated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private parseWeatherText(Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .parameter

    .prologue
    .line 1459
    const-string v1, "CSP_ERROR"

    .line 1461
    const-string v13, ""

    .line 1462
    const-string v12, ""

    .line 1463
    const-string v6, ""

    .line 1464
    const-string v5, ""

    .line 1465
    const/4 v10, 0x0

    .line 1466
    const/4 v8, 0x0

    .line 1467
    const/4 v7, 0x0

    .line 1468
    const/4 v3, 0x0

    .line 1469
    const/4 v2, 0x0

    .line 1470
    const/4 v4, 0x0

    .line 1472
    const/4 v9, 0x0

    .line 1474
    const-string v14, ""

    .line 1475
    const/4 v11, 0x0

    .line 1478
    :try_start_14
    const-string v1, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1480
    const/4 v1, 0x0

    aget-object v1, v16, v1

    const-string v15, "<?xml version="

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1481
    const-string v1, "SecretWallpaper"

    const-string v2, "XML CRASHED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const-string v1, "CSP_ERROR: NOT XML"

    .line 1711
    :goto_30
    return-object v1

    .line 1485
    :cond_31
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move-object v15, v6

    move-object v6, v13

    move v13, v1

    move v1, v2

    move v2, v3

    move-object v3, v14

    move-object v14, v5

    move-object v5, v12

    :goto_3f
    move/from16 v0, v17

    if-ge v13, v0, :cond_49e

    aget-object v12, v16, v13

    .line 1486
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->removeGarbageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1488
    if-eqz v8, :cond_ce

    if-eqz v7, :cond_ce

    if-eqz v10, :cond_ce

    if-eqz v2, :cond_ce

    if-eqz v4, :cond_ce

    .line 1490
    const-string v1, "SecretWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent Weather : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \n(num: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \n(orig num: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \nSunrise : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \nSunset : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \nHighTemp : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnHighTemp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \nLowTemp : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLowTemp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \nMoonPhase : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 1499
    goto/16 :goto_30

    .line 1502
    :cond_ce
    const-string v12, "<currentconditions>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e0

    .line 1503
    const-string v11, "SecretWallpaper"

    const-string v12, "CURRENT CONDITONS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v11, 0x1

    .line 1507
    :cond_e0
    const-string v12, "</currentconditions>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4a5

    .line 1508
    const-string v11, "SecretWallpaper"

    const-string v12, "CURRENT CONDITONS END"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/4 v11, 0x0

    move v12, v11

    .line 1512
    :goto_f3
    const-string v11, "<weathertext>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4a2

    const/4 v11, 0x1

    if-ne v12, v11, :cond_4a2

    .line 1513
    const-string v3, "<weathertext>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v11, "<weathertext>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "</weathertext>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1519
    :goto_123
    const-string v3, "<weathericon>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20d

    if-nez v10, :cond_20d

    const/4 v3, 0x1

    if-ne v12, v3, :cond_20d

    .line 1521
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_136} :catch_3ba

    if-nez v3, :cond_3ac

    .line 1524
    :try_start_138
    const-string v3, "\\d"

    .line 1525
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1526
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1528
    const-string v3, ""

    .line 1529
    :goto_146
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_163

    .line 1530
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_146

    .line 1533
    :cond_163
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1535
    const-string v9, "SecretWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cur Weather icon number: "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->convertWeatherStringToImageSetNum(I)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v9

    sput v9, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1540
    const/4 v9, 0x1

    if-lt v3, v9, :cond_194

    const/16 v9, 0x2c

    if-le v3, v9, :cond_1c0

    .line 1541
    :cond_194
    const-string v1, "SecretWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weather num out of bounds "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "last_weather_conditon_num_2"

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1544
    const-string v1, "CSP_ERROR: WEATHER NUM OUT OF BOUNDS"

    goto/16 :goto_30

    .line 1548
    :cond_1c0
    sget v9, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_1cb

    sget v9, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    const/16 v10, 0xa

    if-le v9, v10, :cond_1e6

    .line 1549
    :cond_1cb
    const-string v1, "SecretWallpaper"

    const-string v2, "Weather num out of bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "last_weather_conditon_num_2"

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1552
    const-string v1, "CSP_ERROR: PARSE ERROR ICON"

    goto/16 :goto_30

    .line 1554
    :cond_1e6
    const-string v9, "SecretWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cur Weather: "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v19

    sget v20, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_20a} :catch_38f

    .line 1558
    const/4 v9, 0x1

    move v10, v9

    move v9, v3

    .line 1571
    :cond_20d
    :goto_20d
    :try_start_20d
    const-string v3, "<hightemperature>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_214} :catch_3ba

    move-result v3

    if-eqz v3, :cond_245

    if-nez v8, :cond_245

    .line 1574
    :try_start_219
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v8, "\'"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "<hightemperature>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "</hightemperature>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnHighTemp:I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_243} :catch_3b0

    .line 1581
    :goto_243
    const/4 v3, 0x1

    move v8, v3

    .line 1584
    :cond_245
    :try_start_245
    const-string v3, "<lowtemperature>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_24c} :catch_3ba

    move-result v3

    if-eqz v3, :cond_27d

    if-nez v7, :cond_27d

    .line 1587
    :try_start_251
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, "\'"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "<lowtemperature>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "</lowtemperature>"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLowTemp:I
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_27b} :catch_3c9

    .line 1594
    :goto_27b
    const/4 v3, 0x1

    move v7, v3

    .line 1597
    :cond_27d
    :try_start_27d
    const-string v3, "sun rise"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_332

    .line 1600
    const-string v3, "No"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d3

    .line 1601
    const-string v6, "6:00 AM"

    .line 1605
    :goto_291
    const-string v3, "No"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e0

    .line 1606
    const-string v4, "6:00 PM"

    .line 1612
    :goto_29b
    const-string v3, "AM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    .line 1614
    const-string v3, " AM"

    const-string v5, ""

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_2b0} :catch_3ba

    move-result-object v3

    .line 1617
    const/4 v5, 0x1

    :try_start_2b2
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2cf} :catch_3ed

    .line 1622
    :goto_2cf
    :try_start_2cf
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    const/16 v5, 0x487

    if-le v3, v5, :cond_2e1

    .line 1623
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    add-int/lit16 v3, v3, -0x4b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    .line 1643
    :cond_2e1
    :goto_2e1
    const-string v3, "AM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43e

    .line 1645
    const-string v3, " AM"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2f6} :catch_3ba

    move-result-object v3

    .line 1648
    const/4 v5, 0x1

    :try_start_2f8
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_315} :catch_438

    .line 1653
    :goto_315
    :try_start_315
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    const/16 v5, 0x487

    if-le v3, v5, :cond_327

    .line 1654
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    add-int/lit16 v3, v3, -0x4b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    .line 1673
    :cond_327
    :goto_327
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z

    .line 1674
    const/4 v3, 0x1

    move-object v5, v4

    move v4, v3

    .line 1677
    :cond_332
    const-string v3, "moon rise"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 1679
    const-string v3, "No"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_483

    .line 1680
    const-string v3, "7:00 PM"

    .line 1685
    :goto_346
    const-string v15, "No"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_490

    .line 1686
    const-string v14, "5:00 AM"

    move-object v15, v3

    .line 1692
    :cond_351
    :goto_351
    if-nez v2, :cond_388

    .line 1693
    const-string v3, "<moon>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35e

    .line 1694
    const/4 v1, 0x1

    .line 1697
    :cond_35e
    if-eqz v1, :cond_388

    const-string v3, "phase date"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_388

    .line 1698
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v18, ">"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1699
    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    .line 1700
    const/4 v2, 0x1

    .line 1485
    :cond_388
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move-object v3, v11

    move v11, v12

    goto/16 :goto_3f

    .line 1559
    :catch_38f
    move-exception v1

    .line 1560
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1561
    const-string v1, "SecretWallpaper"

    const-string v2, "CSP_ERROR: PARSE ERROR ICON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v1, "SecretWallpaper"

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const-string v1, "SecretWallpaper"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const-string v1, "CSP_ERROR: PARSE ERROR ICON"

    goto/16 :goto_30

    .line 1567
    :cond_3ac
    const/4 v3, 0x1

    move v10, v3

    goto/16 :goto_20d

    .line 1577
    :catch_3b0
    move-exception v3

    .line 1578
    const-string v3, "SecretWallpaper"

    const-string v8, "CSP_ERROR: PARSE ERROR HIGH"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_3b8} :catch_3ba

    goto/16 :goto_243

    .line 1704
    :catch_3ba
    move-exception v1

    .line 1705
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1706
    const-string v1, "SecretWallpaper"

    const-string v2, "CSP_ERROR: failed to parse weather data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v1, "CSP_ERROR: failed to parse weather data"

    goto/16 :goto_30

    .line 1590
    :catch_3c9
    move-exception v3

    .line 1591
    :try_start_3ca
    const-string v3, "SecretWallpaper"

    const-string v7, "CSP_ERROR: PARSE ERROR LOW"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27b

    .line 1603
    :cond_3d3
    const-string v3, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v6, v3, v4

    goto/16 :goto_291

    .line 1608
    :cond_3e0
    const-string v3, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    goto/16 :goto_29b

    .line 1618
    :catch_3ed
    move-exception v3

    .line 1619
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2cf

    .line 1628
    :cond_3f3
    const-string v3, " PM"

    const-string v5, ""

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_400} :catch_3ba

    move-result-object v3

    .line 1631
    const/4 v5, 0x1

    :try_start_402
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I
    :try_end_41f
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_41f} :catch_433

    .line 1636
    :goto_41f
    :try_start_41f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    const/16 v5, 0x4b0

    if-ge v3, v5, :cond_2e1

    .line 1637
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    add-int/lit16 v3, v3, 0x4b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    goto/16 :goto_2e1

    .line 1632
    :catch_433
    move-exception v3

    .line 1633
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41f

    .line 1649
    :catch_438
    move-exception v3

    .line 1650
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_315

    .line 1659
    :cond_43e
    const-string v3, " PM"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_44b
    .catch Ljava/lang/Exception; {:try_start_41f .. :try_end_44b} :catch_3ba

    move-result-object v3

    .line 1662
    const/4 v5, 0x1

    :try_start_44d
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I
    :try_end_46a
    .catch Ljava/lang/Exception; {:try_start_44d .. :try_end_46a} :catch_47e

    .line 1667
    :goto_46a
    :try_start_46a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    const/16 v5, 0x4b0

    if-ge v3, v5, :cond_327

    .line 1668
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    add-int/lit16 v3, v3, 0x4b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    goto/16 :goto_327

    .line 1663
    :catch_47e
    move-exception v3

    .line 1664
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46a

    .line 1682
    :cond_483
    const-string v3, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    aget-object v3, v3, v15

    goto/16 :goto_346

    .line 1688
    :cond_490
    const-string v14, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v14, v14, v15
    :try_end_49b
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_49b} :catch_3ba

    move-object v15, v3

    goto/16 :goto_351

    .line 1711
    :cond_49e
    const-string v1, "CSP_ERROR"

    goto/16 :goto_30

    :cond_4a2
    move-object v11, v3

    goto/16 :goto_123

    :cond_4a5
    move v12, v11

    goto/16 :goto_f3
.end method

.method private removeGarbageData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    .line 1321
    const/4 v3, 0x0

    .line 1322
    .local v3, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1324
    .local v5, length:I
    const-string v6, ""

    .line 1326
    .local v6, retString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1327
    .local v4, j:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1328
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1330
    const/4 v3, 0x0

    :goto_11
    if-ge v3, v5, :cond_25

    .line 1331
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1332
    .local v1, character:C
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1334
    .local v2, code:I
    if-eqz v2, :cond_22

    .line 1336
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1337
    add-int/lit8 v4, v4, 0x1

    .line 1330
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1342
    .end local v1           #character:C
    .end local v2           #code:I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1344
    return-object v6
.end method

.method private saveLocation(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    .line 993
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 996
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_6
    const-string v2, "current_latitude_1"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 997
    const-string v2, "current_longitude_1"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 998
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 1002
    :goto_1d
    return-void

    .line 999
    :catch_1e
    move-exception v0

    .line 1000
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private setLastLocationInfo()Landroid/location/Location;
    .registers 5

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, last_location:Landroid/location/Location;
    const/4 v1, 0x0

    .line 792
    .local v1, net_location:Landroid/location/Location;
    iget-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v2, :cond_25

    .line 793
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v2, :cond_12

    .line 794
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 798
    :cond_12
    if-eqz v1, :cond_1d

    .line 800
    const-string v2, "SecretWallpaper"

    const-string v3, "Set Initial Location with Last Known Location..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object v0, v1

    .line 811
    :goto_1c
    return-object v0

    .line 806
    :cond_1d
    const-string v2, "SecretWallpaper"

    const-string v3, "None Initial Location."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 809
    :cond_25
    const-string v2, "SecretWallpaper"

    const-string v3, "AccuweatherDaemon - setLastLocationInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public static setSurfaceCreated(Z)V
    .registers 3
    .parameter "bCreated"

    .prologue
    .line 867
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    if-eqz v0, :cond_9

    .line 868
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean p0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbSurfaceCreated:Z

    .line 872
    :goto_8
    return-void

    .line 870
    :cond_9
    const-string v0, "SecretWallpaper"

    const-string v1, "mMainService null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private showLocationConsentAlertDialog(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    .local v0, content_resolver:Landroid/content/ContentResolver;
    const-string v5, "network"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 527
    if-eqz p1, :cond_2f

    .line 530
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.NETWORK_PROVIDER_ENABLE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v3, intentNetProvEnable:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, intentLocSet:Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x4000

    invoke-static {p1, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 538
    .local v4, pi2LocSet:Landroid/app/PendingIntent;
    :try_start_23
    invoke-virtual {p0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    .line 550
    .end local v2           #intentLocSet:Landroid/content/Intent;
    .end local v3           #intentNetProvEnable:Landroid/content/Intent;
    .end local v4           #pi2LocSet:Landroid/app/PendingIntent;
    :cond_29
    :goto_29
    return-void

    .line 540
    .restart local v2       #intentLocSet:Landroid/content/Intent;
    .restart local v3       #intentNetProvEnable:Landroid/content/Intent;
    .restart local v4       #pi2LocSet:Landroid/app/PendingIntent;
    :catch_2a
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 547
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intentLocSet:Landroid/content/Intent;
    .end local v3           #intentNetProvEnable:Landroid/content/Intent;
    .end local v4           #pi2LocSet:Landroid/app/PendingIntent;
    :cond_2f
    const-string v5, "SecretWallpaper"

    const-string v6, "Context is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private startCurrentLocationWeatherDataService()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 417
    const-string v4, "SecretWallpaper"

    const-string v5, "startCurrentLocationWeatherDataService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-ne v4, v7, :cond_18

    .line 420
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    if-eqz v4, :cond_19

    .line 421
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    invoke-virtual {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v4

    if-ne v4, v7, :cond_19

    .line 446
    :cond_18
    :goto_18
    return-void

    .line 426
    :cond_19
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 429
    .local v3, value:I
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    .line 430
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkNetAccessable()Z

    move-result v4

    if-ne v4, v7, :cond_18

    .line 431
    const-string v4, "SecretWallpaper"

    const-string v5, "Send Broadcast to WeatherDaemon to on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->AppServiceOn(I)I

    move-result v2

    .line 434
    .local v2, service_status:I
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.accuweather"

    const-string v5, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method private stopCurrentLocationWeatherDataService()V
    .registers 8

    .prologue
    .line 449
    iget-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 450
    const-string v4, "SecretWallpaper"

    const-string v5, "stopCurrentLocationWeatherDataService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 455
    .local v3, value:I
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 456
    const-string v4, "SecretWallpaper"

    const-string v5, "Send Broadcast to WeatherDaemon to off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->AppServiceOff(I)I

    move-result v2

    .line 458
    .local v2, service_status:I
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.accuweather"

    const-string v5, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #service_status:I
    .end local v3           #value:I
    :cond_4a
    return-void
.end method

.method private updateLocation()Z
    .registers 10

    .prologue
    .line 817
    const/4 v8, 0x0

    .line 819
    .local v8, ret:Z
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v0, :cond_5b

    .line 821
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 822
    const-string v0, "SecretWallpaper"

    const-string v1, "Request Location Updates using Network Provider..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->init()V

    .line 825
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 829
    :try_start_2b
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    if-nez v0, :cond_36

    .line 830
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 832
    :cond_36
    const-string v0, "SecretWallpaper"

    const-string v1, "Schedule NETTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Ljava/lang/String;)V

    const-wide/32 v2, 0xe678

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4c} :catch_4e

    .line 836
    const/4 v8, 0x1

    .line 849
    :goto_4d
    return v8

    .line 837
    :catch_4e
    move-exception v7

    .line 838
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d

    .line 842
    .end local v7           #e:Ljava/lang/Exception;
    :cond_53
    const-string v0, "SecretWallpaper"

    const-string v1, "Network Location provider is NOT available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 846
    :cond_5b
    const-string v0, "SecretWallpaper"

    const-string v1, "AccuweatherDaemon - updateLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method


# virtual methods
.method public checkUpdate(Z)Z
    .registers 10
    .parameter "bTimeCheck"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    iget-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v4, :cond_9c

    .line 556
    if-eqz p1, :cond_95

    .line 558
    sget-wide v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_93

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long v0, v4, v6

    .line 561
    .local v0, diffTime:J
    const-string v4, "SecretWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getUpdateInterval()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getUpdateInterval()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_79

    .line 564
    const-string v3, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to update: Diff/Interval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateLocationInfo()Z

    move-result v3

    if-nez v3, :cond_78

    .line 587
    .end local v0           #diffTime:J
    :cond_78
    :goto_78
    return v2

    .line 572
    .restart local v0       #diffTime:J
    :cond_79
    const-string v2, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No need to update: Diff is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 574
    goto :goto_78

    .end local v0           #diffTime:J
    :cond_93
    move v2, v3

    .line 577
    goto :goto_78

    .line 579
    :cond_95
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateLocationInfo()Z

    move-result v3

    if-nez v3, :cond_78

    goto :goto_78

    .line 586
    :cond_9c
    const-string v2, "SecretWallpaper"

    const-string v4, "AccuweatherDaemon - checkUpdate"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 587
    goto :goto_78
.end method

.method public convertWeatherStringToImageSetNum(I)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;
    .registers 6
    .parameter "nWeather"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 673
    .local v0, retWeather:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;
    packed-switch p1, :pswitch_data_5c

    .line 742
    :pswitch_7
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 746
    :goto_9
    const/4 v1, 0x3

    if-eq p1, v1, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 v1, 0x5

    if-eq p1, v1, :cond_16

    const/16 v1, 0x20

    if-ne p1, v1, :cond_3a

    .line 747
    :cond_16
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v3, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z

    .line 748
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v2, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z

    .line 757
    :goto_1e
    return-object v0

    .line 682
    :pswitch_1f
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 683
    goto :goto_9

    .line 691
    :pswitch_22
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 692
    goto :goto_9

    .line 695
    :pswitch_25
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 696
    goto :goto_9

    .line 699
    :pswitch_28
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 700
    goto :goto_9

    .line 710
    :pswitch_2b
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 711
    goto :goto_9

    .line 718
    :pswitch_2e
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 719
    goto :goto_9

    .line 728
    :pswitch_31
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 729
    goto :goto_9

    .line 733
    :pswitch_34
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 734
    goto :goto_9

    .line 738
    :pswitch_37
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 739
    goto :goto_9

    .line 749
    :cond_3a
    const/16 v1, 0x13

    if-eq p1, v1, :cond_4a

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4a

    const/16 v1, 0x15

    if-eq p1, v1, :cond_4a

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_53

    .line 750
    :cond_4a
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v3, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z

    .line 751
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v2, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z

    goto :goto_1e

    .line 753
    :cond_53
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v2, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z

    .line 754
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iput-boolean v2, v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z

    goto :goto_1e

    .line 673
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_7
        :pswitch_7
        :pswitch_28
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2b
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_2b
        :pswitch_7
        :pswitch_7
        :pswitch_37
        :pswitch_1f
        :pswitch_34
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_7
        :pswitch_2b
        :pswitch_2b
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public getEngine()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;
    .registers 2

    .prologue
    .line 383
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    return-object v0
.end method

.method public getPreviousWeather()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x3c

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    .line 593
    iget-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v3, :cond_71

    .line 595
    :try_start_b
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "interval_2"

    const-wide/16 v5, 0x3c

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setUpdateInterval(J)V

    .line 596
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "last_updated_time_2"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    .line 597
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "last_weather_conditon_num_2"

    sget-object v5, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 599
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "last_moon_phase_num_2"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    .line 600
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    .line 604
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "current_latitude_2"

    const/high16 v5, -0x4080

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 605
    .local v1, latitude:F
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "current_longitude_2"

    const/high16 v5, -0x4080

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 606
    .local v2, longitude:F
    cmpl-float v3, v1, v7

    if-eqz v3, :cond_71

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_71

    .line 607
    const-string v3, "SecretWallpaper"

    const-string v4, "set previous location"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 610
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_71} :catch_72

    .line 621
    .end local v1           #latitude:F
    .end local v2           #longitude:F
    :cond_71
    :goto_71
    return-void

    .line 612
    :catch_72
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    invoke-virtual {p0, v11, v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setUpdateInterval(J)V

    .line 615
    sput-wide v9, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    .line 616
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    sput v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 617
    iput v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    goto :goto_71
.end method

.method public getUpdateInterval()J
    .registers 7

    .prologue
    .line 515
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "interval_2"

    const-wide/16 v4, 0x3c

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 516
    .local v0, saved_interval:J
    sget-wide v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 517
    sput-wide v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    .line 519
    :cond_12
    sget-wide v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    return-wide v2
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 319
    const-string v2, "SecretWallpaper"

    const-string v3, "Wallpaper create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;->onCreate()V

    .line 322
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 325
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_f
    const-string v2, "com.sec.android.daemonapp.accuweather"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_16} :catch_24

    .line 333
    :goto_16
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->initService()V

    .line 335
    iget-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v2, :cond_32

    .line 336
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->initLocationService()V

    .line 338
    invoke-virtual {p0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkUpdate(Z)Z

    .line 342
    :goto_23
    return-void

    .line 327
    :catch_24
    move-exception v0

    .line 328
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SecretWallpaper"

    const-string v3, "com.sec.android.daemonapp.accuweather not found!!!! error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    .line 330
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 340
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_32
    const-string v2, "SecretWallpaper"

    const-string v3, "com.sec.android.daemonapp.accuweather found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 3

    .prologue
    .line 377
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    .line 378
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Landroid/content/Context;)V

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    .line 379
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWallpaperEngine:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, "SecretWallpaper"

    const-string v1, "Wallpaper destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;->onDestroy()V

    .line 349
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    if-eqz v0, :cond_16

    .line 350
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mTimeTickReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;

    .line 353
    :cond_16
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    if-eqz v0, :cond_21

    .line 354
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mReceiver:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;

    .line 357
    :cond_21
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_2e

    .line 358
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 359
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLocationMgr:Landroid/location/LocationManager;

    .line 362
    :cond_2e
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    if-eqz v0, :cond_3b

    .line 363
    const-string v0, "SecretWallpaper"

    const-string v1, "mNetListener not null, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETListener:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    .line 368
    :cond_3b
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4d

    .line 369
    const-string v0, "SecretWallpaper"

    const-string v1, "mNetTimer not null, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 371
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mNETTimer:Ljava/util/Timer;

    .line 373
    :cond_4d
    return-void
.end method

.method public setCityNameChange(Z)V
    .registers 2
    .parameter "bChange"

    .prologue
    .line 858
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbCityNameChange:Z

    .line 859
    return-void
.end method

.method public setImageSetChange(Z)V
    .registers 2
    .parameter "bChange"

    .prologue
    .line 854
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetChange:Z

    .line 855
    return-void
.end method

.method public setPreviewWeather()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1738
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherChangedDone:Z

    if-ne v0, v4, :cond_6

    .line 1778
    :cond_5
    :goto_5
    return-void

    .line 1742
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1743
    iget-wide v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 1747
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    if-eqz v0, :cond_3f

    .line 1748
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getEngine()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1749
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getEngine()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    if-eqz v0, :cond_3f

    .line 1750
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getEngine()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isImageSetLoading()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1751
    const-string v0, "SecretWallpaper"

    const-string v1, "image loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1758
    :cond_3f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D0_NOTHING:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    if-ne v0, v1, :cond_5d

    .line 1759
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1760
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 1776
    :cond_51
    :goto_51
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherStartTime:J

    goto :goto_5

    .line 1761
    :cond_5d
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    if-ne v0, v1, :cond_70

    .line 1762
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1763
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    goto :goto_51

    .line 1764
    :cond_70
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    if-ne v0, v1, :cond_83

    .line 1765
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1766
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    goto :goto_51

    .line 1767
    :cond_83
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    if-ne v0, v1, :cond_96

    .line 1768
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1769
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    goto :goto_51

    .line 1770
    :cond_96
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    if-ne v0, v1, :cond_51

    .line 1771
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1772
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D0_NOTHING:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 1773
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherChangedDone:Z

    goto :goto_51
.end method

.method public setUpdateInterval(J)V
    .registers 3
    .parameter "new_interval"

    .prologue
    .line 510
    sput-wide p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mfInterval:J

    .line 511
    return-void
.end method

.method public updateLocationInfo()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z

    if-nez v1, :cond_2c

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    .line 768
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setLastLocationInfo()Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    .line 771
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateLocation()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 772
    const-string v1, "SecretWallpaper"

    const-string v2, "Fail to get current location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    if-eqz v1, :cond_26

    .line 776
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastLocation:Landroid/location/Location;

    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCurLoc:Landroid/location/Location;

    .line 778
    :cond_26
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkWeather()V

    .line 784
    :goto_29
    return v0

    .line 781
    :cond_2a
    const/4 v0, 0x1

    goto :goto_29

    .line 783
    :cond_2c
    const-string v1, "SecretWallpaper"

    const-string v2, "AccuweatherDaemon - updateLocationInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public updateWeatherInfo()Z
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1020
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->startCurrentLocationWeatherDataService()V

    .line 1022
    iget-object v12, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "aw_daemon_service_key_city_name"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, cityName:Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "aw_daemon_service_key_icon_num"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1025
    .local v4, iconNum:I
    sget v9, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1026
    .local v9, previousWeahter:I
    sget v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    .line 1027
    .local v6, previousMoonPhase:I
    iget v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    .line 1028
    .local v7, previousSunriseTime:I
    iget v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    .line 1029
    .local v8, previousSunsetTime:I
    sget-object v5, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    .line 1031
    .local v5, previousCity:Ljava/lang/String;
    const-string v12, "SecretWallpaper"

    const-string v13, "!!!!!!!!!updateWeatherInfo !!!!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    if-lt v4, v10, :cond_34

    const/16 v12, 0x2c

    if-le v4, v12, :cond_54

    .line 1036
    :cond_34
    const-string v10, "SecretWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weather num out of bounds  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget v10, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    move v10, v11

    .line 1095
    :goto_53
    return v10

    .line 1040
    :cond_54
    invoke-virtual {p0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->convertWeatherStringToImageSetNum(I)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v12

    sput v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    .line 1043
    sget v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    if-lt v12, v10, :cond_68

    sget v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    const/16 v13, 0xa

    if-le v12, v13, :cond_8a

    .line 1044
    :cond_68
    const-string v10, "SecretWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weather num out of bounds:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget v10, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    move v10, v11

    .line 1047
    goto :goto_53

    .line 1049
    :cond_8a
    iput v11, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I

    .line 1050
    const-string v11, "SecretWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cur Weather: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v13

    sget v14, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v11, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "aw_daemon_service_key_detail_info"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, detail:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->parseWeatherText(Ljava/lang/String;)Ljava/lang/String;

    .line 1057
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    .line 1059
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1061
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_c3
    sget v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    if-eq v11, v9, :cond_ee

    .line 1062
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1063
    const-string v11, "SecretWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!!!!Weather Changed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-string v11, "last_weather_conditon_num_2"

    sget v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurWeather:I

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1067
    :cond_ee
    sget v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    if-eq v6, v11, :cond_ff

    .line 1068
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1069
    const-string v11, "last_moon_phase_num_2"

    sget v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnCurMoonPhase:I

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1072
    :cond_ff
    iget v11, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    if-eq v7, v11, :cond_10a

    .line 1073
    const-string v11, "last_sunrise_time_2"

    iget v12, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1076
    :cond_10a
    iget v11, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    if-eq v8, v11, :cond_115

    .line 1077
    const-string v11, "last_sunset_time_2"

    iget v12, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1080
    :cond_115
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_138

    .line 1081
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_138

    .line 1082
    sget-boolean v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetChange:Z

    if-nez v11, :cond_131

    .line 1083
    sget-object v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setCityNameChange(Z)V

    .line 1085
    :cond_131
    const-string v11, "last_city_name_2"

    sget-object v12, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mCityName:Ljava/lang/String;

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1088
    :cond_138
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_13b} :catch_143

    .line 1093
    :goto_13b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLastUpdatedTime:J

    goto/16 :goto_53

    .line 1089
    :catch_143
    move-exception v2

    .line 1090
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13b
.end method
