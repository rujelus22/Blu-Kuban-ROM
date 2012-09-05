.class public Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$HandlerClass;,
        Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;,
        Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;,
        Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;
    }
.end annotation


# static fields
.field private static AUTOREFRESH_AFTER_CONNECTED:Z

.field private static CHECK_AFTER_CONNECTED:Z

.field private static FLAG_FOR_AUTOREFRESHING:Z

.field private static dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private static firstUpdate:Z

.field private static getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

.field private static handler:Landroid/os/Handler;

.field private static height:I

.field private static httpThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static infos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static interval:I

.field private static locating_ids:[I

.field private static mAutoScrollTime:I

.field private static mCtx:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIconArray:[I

.field private static mMainLayoutId:I

.field private static mRefreshCanceled:Z

.field private static mWeatherContainer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWeatherCount:I

.field private static mWeatherIndex:I

.field private static mWeatherTodayIcomImageArray:[I

.field private static moveToNext:Z

.field private static onBoot:Z

.field private static refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

.field static sdf:Ljava/text/SimpleDateFormat;

.field private static selectcity:Ljava/lang/String;

.field private static width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 63
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->firstUpdate:Z

    .line 68
    new-array v0, v2, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    .line 81
    new-array v0, v2, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherTodayIcomImageArray:[I

    .line 99
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    .line 102
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    .line 104
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->moveToNext:Z

    .line 106
    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherIndex:I

    .line 107
    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    .line 291
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->FLAG_FOR_AUTOREFRESHING:Z

    .line 292
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 293
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    .line 376
    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->onBoot:Z

    .line 817
    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mAutoScrollTime:I

    .line 917
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->sdf:Ljava/text/SimpleDateFormat;

    .line 1379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    .line 1769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    return-void

    .line 68
    :array_4a
    .array-data 0x4
        0x5at 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
    .end array-data

    .line 81
    :array_76
    .array-data 0x4
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized DisableHandler()V
    .registers 3

    .prologue
    .line 2320
    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 2322
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2323
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1b

    .line 2327
    :goto_11
    monitor-exit v1

    return-void

    .line 2326
    :cond_13
    :try_start_13
    const-string v0, ""

    const-string v2, "mHandler is null!!"

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 2320
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->FLAG_FOR_AUTOREFRESHING:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->AUTOREFRESH_AFTER_CONNECTED:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->AUTOREFRESH_AFTER_CONNECTED:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->FLAG_FOR_AUTOREFRESHING:Z

    return p0
.end method

.method static synthetic access$1100(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V

    return-void
.end method

.method static synthetic access$1200(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showError(I)V

    return-void
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()V
    .registers 0

    .prologue
    .line 52
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    return-void
.end method

.method static synthetic access$1500(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->deleteMe(I)V

    return-void
.end method

.method static synthetic access$1600()[I
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->locating_ids:[I

    return-object v0
.end method

.method static synthetic access$1700(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/RemoteViews;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideError(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherIndex:I

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->moveToNext:Z

    return p0
.end method

.method static synthetic access$2300(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-static/range {p0 .. p6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWeatherData(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V

    return-void
.end method

.method static synthetic access$2400()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->interval:I

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .prologue
    .line 52
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->stopThreads()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    return p0
.end method

.method static synthetic access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object p0
.end method

.method private static checkAutoRefresh()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 348
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_43

    .line 350
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isWifiConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isNeedAutoRefresh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 353
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting WF... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_43
    :goto_43
    return-void

    .line 358
    :cond_44
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 359
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    invoke-direct {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    .line 360
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->sendEmptyMessage(I)Z

    goto :goto_43
.end method

.method public static checkAutorefreshHandler()V
    .registers 2

    .prologue
    .line 367
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    if-eqz v0, :cond_e

    .line 369
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->removeMessages(I)V

    .line 370
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    .line 374
    :goto_d
    return-void

    .line 373
    :cond_e
    const-string v0, ""

    const-string v1, "refreshhandler is null!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static deleteMe(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 2568
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p0, :cond_d

    .line 2569
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2570
    :cond_d
    return-void
.end method

.method private static getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2206
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v0, :cond_17

    .line 2209
    const-string v0, "ClockWeather"

    const-string v2, "dbhelper is null!!"

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 2213
    :cond_17
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    .line 2214
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 2217
    :cond_25
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2220
    if-nez v0, :cond_36

    .line 2221
    const-string v0, ""

    const-string v2, "getWthrDBDt@citylist is null!!"

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2303
    :goto_35
    return-object v0

    .line 2226
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_250

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 2229
    if-eqz v0, :cond_3a

    .line 2230
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v3

    .line 2232
    if-eqz v3, :cond_3a

    .line 2233
    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V

    .line 2236
    const-string v5, "ClockWeather"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 2240
    invoke-virtual {v5}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 2241
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2244
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityName:Ljava/lang/String;

    .line 2245
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    .line 2246
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityTime:Ljava/lang/String;

    .line 2247
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayTemperature:I

    .line 2248
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayHighTemperature:I

    .line 2249
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayLowTemperature:I

    .line 2250
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v6

    iput v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    .line 2251
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTime:Ljava/lang/Long;

    .line 2252
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iput v6, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherUnit:I

    .line 2254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2256
    const-string v7, "%te"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2257
    const/4 v8, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 2258
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v9, v10, v7}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2259
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2260
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2262
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayDateText:I

    .line 2263
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayHighTemperature:I

    .line 2264
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayLowTemperature:I

    .line 2265
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayWeatherIcon:I

    .line 2267
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2268
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2269
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayDateText:I

    .line 2270
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayHighTemperature:I

    .line 2271
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayLowTemperature:I

    .line 2272
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayWeatherIcon:I

    .line 2274
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2275
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2276
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayDateText:I

    .line 2277
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayHighTemperature:I

    .line 2278
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayLowTemperature:I

    .line 2279
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayWeatherIcon:I

    .line 2281
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2282
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2283
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayDateText:I

    .line 2284
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayHighTemperature:I

    .line 2285
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayLowTemperature:I

    .line 2286
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    iput v7, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayWeatherIcon:I

    .line 2288
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2289
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2290
    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayDateText:I

    .line 2291
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayHighTemperature:I

    .line 2292
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayLowTemperature:I

    .line 2293
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v3

    iput v3, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayWeatherIcon:I

    .line 2295
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->selectcity:Ljava/lang/String;

    if-eqz v3, :cond_24b

    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->selectcity:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->SelectCity:Z

    .line 2297
    :cond_24b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a

    :cond_250
    move-object v0, v1

    .line 2303
    goto/16 :goto_35
.end method

.method private static hideError(Landroid/widget/RemoteViews;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2197
    const v0, 0x7f0c00a0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2199
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2200
    invoke-virtual {v0, p1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2201
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    .line 2202
    return-void
.end method

.method private static hideLoading(I)V
    .registers 4
    .parameter

    .prologue
    .line 2131
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2132
    const v1, 0x7f0c0098

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2133
    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2134
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2135
    invoke-virtual {v1, p0, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2136
    return-void
.end method

.method private static hideLocating(I)V
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 2117
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLocatingDialogProgress(Landroid/content/Context;Z)Z

    .line 2119
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v0

    .line 2120
    new-instance v1, Landroid/widget/RemoteViews;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2122
    const v0, 0x7f0c009b

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2123
    const v0, 0x7f0c009d

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2125
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2126
    invoke-virtual {v0, p0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2127
    return-void
.end method

.method public static performGetACity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;[I)V
    .registers 11
    .parameter "info"
    .parameter "locatingIds"

    .prologue
    .line 1504
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    .line 1506
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v8, urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1509
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v1, :cond_13

    .line 1639
    :cond_12
    :goto_12
    return-void

    .line 1513
    :cond_13
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    .line 1514
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 1517
    :cond_23
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v7

    .line 1520
    .local v7, tempScaleSetting:I
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    .line 1522
    .local v0, httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    if-nez v0, :cond_39

    .line 1523
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .end local v0           #httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    .line 1525
    .restart local v0       #httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    :cond_39
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1526
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_12

    .line 1528
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    if-nez v1, :cond_4e

    .line 1529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    .line 1531
    :cond_4e
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 1636
    .local v6, t:Ljava/lang/Thread;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 1637
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private static performLocate(Landroid/content/Context;[I)V
    .registers 12
    .parameter "context"
    .parameter "ids"

    .prologue
    const/16 v9, 0x3f2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1401
    sput-object p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    .line 1402
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->locating_ids:[I

    .line 1404
    sput-boolean v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    .line 1406
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 1407
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 1409
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v3, :cond_1d

    aget v2, v0, v1

    .line 1410
    .local v2, id:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showLocating(I)V

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1412
    .end local v2           #id:I
    :cond_1d
    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;-><init>(Landroid/content/Context;)V

    .line 1414
    .local v4, mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    if-eqz v5, :cond_56

    .line 1416
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1417
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    const/16 v6, 0x3f3

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1418
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1419
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    const/16 v6, 0xca

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1420
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1421
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    const/16 v6, 0xc9

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1422
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    const/16 v6, 0x3e7

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;->removeMessages(I)V

    .line 1424
    const/4 v5, 0x0

    sput-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    .line 1426
    :cond_56
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    invoke-direct {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;-><init>()V

    sput-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    .line 1428
    invoke-static {p0, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setNeedLocate(Landroid/content/Context;Z)Z

    .line 1429
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getLocDataHandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;

    invoke-virtual {v4, v5, v7, v8, v8}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->performGetCurrentLocation(Landroid/os/Handler;IZZ)V

    .line 1430
    return-void
.end method

.method private static performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
    .registers 16
    .parameter "item"
    .parameter "ids"
    .parameter "bool"
    .parameter "needRefresh"

    .prologue
    .line 924
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mRefreshCanceled:Z

    .line 926
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_53

    .line 928
    :cond_f
    const-string v1, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWthrContainer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v1, :cond_4b

    .line 930
    const-string v1, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mWthrContainer.size(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_4b
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 933
    :cond_53
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v1, :cond_67

    .line 935
    const-string v1, "ClockWeather"

    const-string v2, "dbhelper is null!!"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 939
    :cond_67
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_77

    .line 940
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 944
    :cond_77
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v1, :cond_87

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_87

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v1, :cond_d0

    .line 946
    :cond_87
    const-string v1, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return mWthrContainer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " dbhelper: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v1, :cond_cf

    .line 948
    const-string v1, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Return mWthrContainer.size(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_cf
    :goto_cf
    return-void

    .line 951
    :cond_d0
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 952
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 954
    move-object v6, p1

    .local v6, arr$:[I
    array-length v9, v6

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_d9
    if-ge v7, v9, :cond_e3

    aget v8, v6, v7

    .line 955
    .local v8, id:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showLoading(I)V

    .line 954
    add-int/lit8 v7, v7, 0x1

    goto :goto_d9

    .line 957
    .end local v8           #id:I
    :cond_e3
    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    .line 958
    .local v11, urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 960
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_cf

    .line 962
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    if-nez v1, :cond_103

    .line 963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    .line 965
    :cond_103
    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 967
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    .line 968
    .local v0, httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v10

    .line 1118
    .local v10, t:Ljava/lang/Thread;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf
.end method

.method public static setAutoScrollTime()V
    .registers 2

    .prologue
    .line 819
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v0, :cond_d

    .line 820
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 823
    :cond_d
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 824
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 827
    :cond_1d
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoscrollSettings()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mAutoScrollTime:I

    .line 828
    return-void
.end method

.method private static setDayOfWeekText(Landroid/widget/RemoteViews;II)V
    .registers 6
    .parameter "view"
    .parameter "viewId"
    .parameter "iDayOfWeek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xff

    .line 2540
    const/16 v1, 0x14

    invoke-static {p2, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, sDayOfWeekText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2542
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2555
    return-void
.end method

.method private static setWeatherData(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;",
            ">;",
            "Landroid/appwidget/AppWidgetManager;",
            "I",
            "Landroid/widget/RemoteViews;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 1774
    if-gez p3, :cond_3

    .line 2081
    :cond_2
    :goto_2
    return-void

    .line 1777
    :cond_3
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WthrDt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v0, ""

    .line 1781
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v1, :cond_78

    .line 1783
    const-string v1, "ClockWeather"

    const-string v2, "setWeherDat@dbhelper is null!!"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_3c
    :goto_3c
    if-eqz p4, :cond_2

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1802
    const/4 v2, 0x0

    .line 1803
    const/4 v1, 0x0

    .line 1804
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_483

    .line 1806
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_50
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_ab

    .line 1808
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    .line 1811
    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1814
    const/4 v2, 0x1

    move v3, v1

    .line 1806
    :cond_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    .line 1788
    :cond_78
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v1

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    .line 1790
    const-string v1, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWthrCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    .line 1795
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    goto :goto_3c

    .line 1818
    :cond_ab
    if-nez v2, :cond_ae

    .line 1819
    const/4 v3, 0x0

    .line 1821
    :cond_ae
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->moveToNext:Z

    if-eqz v0, :cond_be

    .line 1823
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    if-le v0, v1, :cond_55b

    .line 1824
    add-int/lit8 v3, v3, 0x1

    .line 1829
    :cond_be
    :goto_be
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getDetailWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v1

    .line 1833
    :try_start_ce
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    .line 1838
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-eqz v0, :cond_186

    .line 1840
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_108

    .line 1843
    invoke-static {p5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setXMLWidget(I)I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    invoke-static {p4, v4, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetBackground(Landroid/widget/RemoteViews;IILcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;)V

    .line 1845
    :cond_108
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_55e

    .line 1847
    const v0, 0x7f0c008f

    const v4, 0x7f020098

    invoke-virtual {p4, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1853
    :goto_11a
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1856
    const v4, 0x7f0c008e

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1858
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayHighTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1862
    const v4, 0x7f0c0093

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1864
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayLowTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1868
    const v4, 0x7f0c0094

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1870
    :cond_186
    const v4, 0x7f0c0096

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityName:Ljava/lang/String;

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1872
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-eq p5, v0, :cond_1c7

    .line 1875
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-ne p5, v0, :cond_58a

    .line 1877
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 1879
    const v4, 0x7f0c00a3

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1894
    :cond_1c7
    :goto_1c7
    const v4, 0x7f0c0091

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherTodayIcomImageArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1898
    const-string v4, "kbi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WthrTdyIcnImg:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-eq p5, v0, :cond_221

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-eq p5, v0, :cond_221

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-eq p5, v0, :cond_221

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-ne p5, v0, :cond_5a2

    .line 1904
    :cond_221
    const v4, 0x7f0c009a

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDateStringShort4x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1910
    :goto_23b
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-eq p5, v0, :cond_249

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetXML(I)I

    move-result v0

    if-ne p5, v0, :cond_479

    .line 1913
    :cond_249
    const v4, 0x7f0c00a6

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1915
    const v4, 0x7f0c00ab

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayDateText:I

    invoke-static {p4, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setDayOfWeekText(Landroid/widget/RemoteViews;II)V

    .line 1917
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayHighTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1920
    const v4, 0x7f0c00b2

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1921
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherOnedayLowTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1924
    const v4, 0x7f0c00b3

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1927
    const v4, 0x7f0c00a7

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1929
    const v4, 0x7f0c00ac

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayDateText:I

    invoke-static {p4, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setDayOfWeekText(Landroid/widget/RemoteViews;II)V

    .line 1930
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayHighTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1933
    const v4, 0x7f0c00b6

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1934
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTwodayLowTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1937
    const v4, 0x7f0c00b7

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1940
    const v4, 0x7f0c00a8

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1942
    const v4, 0x7f0c00ad

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayDateText:I

    invoke-static {p4, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setDayOfWeekText(Landroid/widget/RemoteViews;II)V

    .line 1943
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayHighTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1946
    const v4, 0x7f0c00ba

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1947
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherThreedayLowTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1950
    const v4, 0x7f0c00bb

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1953
    const v4, 0x7f0c00a9

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1955
    const v4, 0x7f0c00ae

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayDateText:I

    invoke-static {p4, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setDayOfWeekText(Landroid/widget/RemoteViews;II)V

    .line 1956
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayHighTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1959
    const v4, 0x7f0c00be

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1960
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFourdayLowTemperature:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1963
    const v4, 0x7f0c00bf

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1966
    const v4, 0x7f0c00aa

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mIconArray:[I

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayWeatherIcon:I

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->convertImageGroup_Main(I)I

    move-result v0

    aget v0, v5, v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1969
    const v2, 0x7f0c00af

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayDateText:I

    invoke-static {p4, v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setDayOfWeekText(Landroid/widget/RemoteViews;II)V

    .line 1970
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v2

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v4

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayHighTemperature:I

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1973
    const v2, 0x7f0c00c2

    invoke-virtual {p4, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1974
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v1

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v2

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherFivedayLowTemperature:I

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    .line 1977
    const v1, 0x7f0c00c3

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1979
    :cond_479
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;
    :try_end_483
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_483} :catch_569

    .line 2009
    :cond_483
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_602

    .line 2011
    const v1, 0x7f0c0089

    const/16 v2, 0x8

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2012
    const v1, 0x7f0c008a

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2013
    const v1, 0x7f0c008c

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2014
    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2016
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2017
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2018
    const-string v2, "selectLayout"

    invoke-static {p5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setXMLWidget(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2019
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApWdgId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const-string v2, "searchlocation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2021
    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2022
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2023
    const/high16 v0, 0x800

    invoke-static {p0, p3, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2024
    const v1, 0x7f0c008a

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherclock.action.MANUAL_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2027
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2028
    mul-int/lit8 v1, p3, 0xa

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2030
    const v1, 0x7f0c008b

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2033
    mul-int/lit8 v1, p3, 0x64

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2034
    const v1, 0x7f0c00a0

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2035
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2036
    mul-int/lit16 v1, p3, 0x3e8

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2038
    const v1, 0x7f0c009f

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2041
    mul-int/lit16 v1, p3, 0x2710

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2043
    const v1, 0x7f0c0098

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2076
    :cond_54e
    :goto_54e
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isLocatingDialogProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2077
    invoke-virtual {p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_2

    .line 1826
    :cond_55b
    const/4 v3, 0x0

    goto/16 :goto_be

    .line 1851
    :cond_55e
    const v0, 0x7f0c008f

    const v4, 0x7f02009f

    :try_start_564
    invoke-virtual {p4, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_567
    .catch Ljava/lang/Exception; {:try_start_564 .. :try_end_567} :catch_569

    goto/16 :goto_11a

    .line 1981
    :catch_569
    move-exception v0

    .line 1983
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_578
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    .line 1988
    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_578

    .line 1885
    :cond_58a
    const v4, 0x7f0c00a3

    :try_start_58d
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTodayWeatherIcon:I

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1c7

    .line 1907
    :cond_5a2
    const v4, 0x7f0c009a

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDateStringShort2x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_5bc
    .catch Ljava/lang/Exception; {:try_start_58d .. :try_end_5bc} :catch_569

    goto/16 :goto_23b

    .line 1990
    :cond_5be
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->deleteCitys(Ljava/util/ArrayList;)I

    .line 1992
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1993
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1994
    const-string v1, "flags"

    const/16 v2, 0x7cf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1996
    const v1, 0x7f0c0089

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1997
    const v1, 0x7f0c008c

    const/16 v2, 0x8

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1998
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2000
    mul-int/lit8 v1, p3, 0xa

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2001
    const v1, 0x7f0c008a

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2003
    invoke-virtual {p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_2

    .line 2048
    :cond_602
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isLocatingDialogProgress(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61d

    .line 2049
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v1

    .line 2050
    array-length v2, v1

    const/4 v0, 0x0

    :goto_613
    if-ge v0, v2, :cond_54e

    aget v3, v1, v0

    .line 2051
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showLocating(I)V

    .line 2050
    add-int/lit8 v0, v0, 0x1

    goto :goto_613

    .line 2057
    :cond_61d
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    .line 2058
    invoke-static {p5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setXMLWidget(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p4, v1, v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetBackground(Landroid/widget/RemoteViews;IILcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;)V

    .line 2059
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2060
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2061
    const-string v1, "flags"

    const/16 v2, 0x7cf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2063
    const v1, 0x7f0c0089

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2064
    const v1, 0x7f0c008c

    const/16 v2, 0x8

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2065
    const v1, 0x7f0c008a

    const/16 v2, 0x8

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2066
    const v1, 0x7f0c008b

    const/16 v2, 0x8

    invoke-virtual {p4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2067
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2069
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    .line 2071
    mul-int/lit8 v1, p3, 0xa

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2072
    const v1, 0x7f0c0089

    invoke-virtual {p4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_54e
.end method

.method private static setWidgetBackground(Landroid/widget/RemoteViews;IILcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2453
    const/4 v0, 0x0

    .line 2456
    invoke-virtual {p3, p2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getDayNight(I)I

    move-result v1

    if-nez v1, :cond_41

    .line 2458
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manLayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    packed-switch p1, :pswitch_data_bc

    .line 2535
    :cond_22
    :goto_22
    const v1, 0x7f0c0088

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2536
    return-void

    .line 2463
    :pswitch_29
    const v0, 0x7f020089

    .line 2464
    goto :goto_22

    .line 2466
    :pswitch_2d
    const v0, 0x7f02008a

    .line 2467
    goto :goto_22

    .line 2469
    :pswitch_31
    const v0, 0x7f02008b

    .line 2470
    goto :goto_22

    .line 2472
    :pswitch_35
    const v0, 0x7f02008c

    .line 2473
    goto :goto_22

    .line 2475
    :pswitch_39
    const v0, 0x7f02008d

    .line 2476
    goto :goto_22

    .line 2478
    :pswitch_3d
    const v0, 0x7f02008e

    goto :goto_22

    .line 2482
    :cond_41
    invoke-virtual {p3, p2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getDayNight(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7c

    .line 2484
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manLayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    packed-switch p1, :pswitch_data_cc

    goto :goto_22

    .line 2489
    :pswitch_64
    const v0, 0x7f020083

    .line 2490
    goto :goto_22

    .line 2492
    :pswitch_68
    const v0, 0x7f020084

    .line 2493
    goto :goto_22

    .line 2495
    :pswitch_6c
    const v0, 0x7f020085

    .line 2496
    goto :goto_22

    .line 2498
    :pswitch_70
    const v0, 0x7f020086

    .line 2499
    goto :goto_22

    .line 2501
    :pswitch_74
    const v0, 0x7f020087

    .line 2502
    goto :goto_22

    .line 2504
    :pswitch_78
    const v0, 0x7f020088

    goto :goto_22

    .line 2508
    :cond_7c
    invoke-virtual {p3, p2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getDayNight(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 2510
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manLayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    packed-switch p1, :pswitch_data_dc

    goto :goto_22

    .line 2515
    :pswitch_9f
    const v0, 0x7f02008f

    .line 2516
    goto :goto_22

    .line 2518
    :pswitch_a3
    const v0, 0x7f020090

    .line 2519
    goto/16 :goto_22

    .line 2521
    :pswitch_a8
    const v0, 0x7f020091

    .line 2522
    goto/16 :goto_22

    .line 2524
    :pswitch_ad
    const v0, 0x7f020092

    .line 2525
    goto/16 :goto_22

    .line 2527
    :pswitch_b2
    const v0, 0x7f020093

    .line 2528
    goto/16 :goto_22

    .line 2530
    :pswitch_b7
    const v0, 0x7f020094

    goto/16 :goto_22

    .line 2460
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
    .end packed-switch

    .line 2486
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_64
        :pswitch_68
        :pswitch_6c
        :pswitch_70
        :pswitch_74
        :pswitch_78
    .end packed-switch

    .line 2512
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_a3
        :pswitch_a8
        :pswitch_ad
        :pswitch_b2
        :pswitch_b7
    .end packed-switch
.end method

.method private static setWidgetXML(I)I
    .registers 2
    .parameter "mainLayoutId"

    .prologue
    .line 2395
    const/4 v0, 0x0

    .line 2397
    .local v0, xmlResId:I
    packed-switch p0, :pswitch_data_1e

    .line 2419
    :goto_4
    return v0

    .line 2400
    :pswitch_5
    const v0, 0x7f03002d

    .line 2401
    goto :goto_4

    .line 2403
    :pswitch_9
    const v0, 0x7f03002e

    .line 2404
    goto :goto_4

    .line 2406
    :pswitch_d
    const v0, 0x7f03002f

    .line 2407
    goto :goto_4

    .line 2409
    :pswitch_11
    const v0, 0x7f030030

    .line 2410
    goto :goto_4

    .line 2412
    :pswitch_15
    const v0, 0x7f030031

    .line 2413
    goto :goto_4

    .line 2415
    :pswitch_19
    const v0, 0x7f030032

    goto :goto_4

    .line 2397
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method private static setXMLWidget(I)I
    .registers 2
    .parameter "mainLayoutId"

    .prologue
    .line 2424
    const/4 v0, 0x0

    .line 2426
    .local v0, xmlResId:I
    packed-switch p0, :pswitch_data_12

    .line 2448
    :goto_4
    return v0

    .line 2429
    :pswitch_5
    const/4 v0, 0x1

    .line 2430
    goto :goto_4

    .line 2432
    :pswitch_7
    const/4 v0, 0x2

    .line 2433
    goto :goto_4

    .line 2435
    :pswitch_9
    const/4 v0, 0x3

    .line 2436
    goto :goto_4

    .line 2438
    :pswitch_b
    const/4 v0, 0x4

    .line 2439
    goto :goto_4

    .line 2441
    :pswitch_d
    const/4 v0, 0x5

    .line 2442
    goto :goto_4

    .line 2444
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 2426
    nop

    :pswitch_data_12
    .packed-switch 0x7f03002d
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private static showError(I)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0c00a1

    .line 2147
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2148
    const v1, 0x7f0c00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2149
    const v1, 0x7f0c008c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2150
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2151
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2155
    :goto_37
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2156
    invoke-virtual {v1, p0, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2157
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 2159
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_53

    .line 2161
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;

    invoke-direct {v2, v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;-><init>(Landroid/widget/RemoteViews;I)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2170
    :cond_53
    return-void

    .line 2153
    :cond_54
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_37
.end method

.method private static showLoading(I)V
    .registers 4
    .parameter

    .prologue
    .line 2085
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2086
    const v1, 0x7f0c008b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2087
    const v1, 0x7f0c0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2089
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2090
    invoke-virtual {v1, p0, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2091
    return-void
.end method

.method private static showLocating(I)V
    .registers 6
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2096
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLocatingDialogProgress(Landroid/content/Context;Z)Z

    .line 2098
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v0

    .line 2099
    new-instance v1, Landroid/widget/RemoteViews;

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2101
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    .line 2102
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setXMLWidget(I)I

    move-result v0

    invoke-static {v1, v0, v3, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWidgetBackground(Landroid/widget/RemoteViews;IILcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;)V

    .line 2104
    const v0, 0x7f0c009b

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2105
    const v0, 0x7f0c0089

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2106
    const v0, 0x7f0c008c

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2107
    const v0, 0x7f0c009d

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2108
    const v0, 0x7f0c009c

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2110
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2111
    invoke-virtual {v0, p0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2112
    return-void
.end method

.method public static startScroll()V
    .registers 6

    .prologue
    const/16 v5, 0x65

    const/4 v2, 0x1

    .line 842
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setAutoScrollTime()V

    .line 844
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-lez v0, :cond_39

    .line 846
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_16

    .line 848
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$HandlerClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$HandlerClass;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    .line 851
    :cond_16
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-le v0, v2, :cond_39

    .line 853
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mAutoScrollTime:I

    if-lez v0, :cond_39

    .line 855
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mAutoScrollTime:I

    if-ne v0, v2, :cond_3a

    const/4 v0, 0x5

    :goto_23
    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->interval:I

    .line 856
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_39

    .line 858
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 859
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->interval:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 865
    :cond_39
    return-void

    .line 855
    :cond_3a
    const/16 v0, 0xa

    goto :goto_23
.end method

.method private static stopThreads()V
    .registers 3

    .prologue
    .line 1383
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    .line 1385
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 1387
    .local v1, t:Ljava/lang/Thread;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1388
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a

    .line 1392
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->httpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1394
    :cond_27
    return-void
.end method

.method private updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    .registers 12
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "layoutId"

    .prologue
    const v2, 0x7f070007

    const/4 v6, 0x1

    .line 1651
    const/4 v4, 0x0

    .line 1653
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-ne v0, v1, :cond_4b

    .line 1655
    packed-switch p4, :pswitch_data_126

    .line 1670
    :pswitch_11
    const p4, 0x7f030032

    .line 1671
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1764
    .restart local v4       #views:Landroid/widget/RemoteViews;
    :goto_1d
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 1765
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWeatherData(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V

    .line 1766
    return-void

    .line 1658
    :pswitch_2d
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1659
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1662
    :pswitch_37
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1663
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1666
    :pswitch_41
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1667
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1675
    :cond_4b
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0x5dc00

    if-ne v0, v1, :cond_90

    .line 1677
    packed-switch p4, :pswitch_data_134

    .line 1693
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v6, :cond_8c

    .line 1694
    const p4, 0x7f03002f

    .line 1698
    :goto_64
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1699
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1680
    :pswitch_6e
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1681
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1684
    :pswitch_78
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1685
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1688
    :pswitch_82
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1689
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto :goto_1d

    .line 1696
    :cond_8c
    const p4, 0x7f030030

    goto :goto_64

    .line 1703
    :cond_90
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_d9

    .line 1705
    packed-switch p4, :pswitch_data_13e

    .line 1721
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v6, :cond_d5

    .line 1722
    const p4, 0x7f03002f

    .line 1726
    :goto_a9
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1727
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1708
    :pswitch_b4
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1709
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1712
    :pswitch_bf
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1713
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1716
    :pswitch_ca
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1717
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1724
    :cond_d5
    const p4, 0x7f030030

    goto :goto_a9

    .line 1732
    :cond_d9
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0x25800

    if-ne v0, v1, :cond_117

    .line 1734
    packed-switch p4, :pswitch_data_148

    .line 1746
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v6, :cond_113

    .line 1747
    const p4, 0x7f03002f

    .line 1751
    :goto_f2
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1752
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1737
    :pswitch_fd
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1738
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1741
    :pswitch_108
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1742
    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1749
    :cond_113
    const p4, 0x7f030030

    goto :goto_f2

    .line 1759
    :cond_117
    const p4, 0x7f03002f

    .line 1760
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v4       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1d

    .line 1655
    nop

    :pswitch_data_126
    .packed-switch 0x7f03002d
        :pswitch_2d
        :pswitch_37
        :pswitch_11
        :pswitch_11
        :pswitch_41
    .end packed-switch

    .line 1677
    :pswitch_data_134
    .packed-switch 0x7f03002d
        :pswitch_6e
        :pswitch_78
        :pswitch_82
    .end packed-switch

    .line 1705
    :pswitch_data_13e
    .packed-switch 0x7f03002d
        :pswitch_b4
        :pswitch_bf
        :pswitch_ca
    .end packed-switch

    .line 1734
    :pswitch_data_148
    .packed-switch 0x7f03002e
        :pswitch_fd
        :pswitch_108
    .end packed-switch
.end method

.method static updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V
    .registers 12
    .parameter "context"
    .parameter "aw"
    .parameter "id"
    .parameter "mainLayoutId"
    .parameter "animation"

    .prologue
    .line 1645
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1646
    .local v4, views:Landroid/widget/RemoteViews;
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWeatherData(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V

    .line 1647
    return-void
.end method

.method public static updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .registers 11
    .parameter "context"
    .parameter "instance"
    .parameter "appWidgetId"
    .parameter "b"

    .prologue
    .line 2560
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v3

    .line 2561
    .local v3, ids:[I
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v4, :cond_16

    aget v2, v0, v1

    .line 2563
    .local v2, id:I
    invoke-static {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, p1, v2, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 2561
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2565
    .end local v2           #id:I
    :cond_16
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 244
    const-string v2, "ClockWeather"

    const-string v3, "onDeleted()"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 248
    aget v0, p2, v1

    .line 249
    .local v0, appWidgetId:I
    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;I)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 251
    .end local v0           #appWidgetId:I
    :cond_16
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 257
    const-string v0, "ClockWeather"

    const-string v1, "onDisabled()"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 260
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 262
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 263
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    .line 264
    :cond_17
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 266
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 270
    :cond_22
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->removeAllWidgetIds(Landroid/content/Context;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "weather.action.stopservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 273
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->firstUpdate:Z

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "weather.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 282
    const-string v0, "ClockWeather"

    const-string v1, "onEnabled()"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setAutoScrollTime()V

    .line 284
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 380
    const-string v0, "ClockWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive@ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    .line 384
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->width:I

    .line 385
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->height:I

    .line 387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v0, "widgetspanx"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 389
    const-string v0, "widgetspany"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 390
    const-string v0, "widgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 391
    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 393
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 395
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v1

    .line 396
    const/4 v0, 0x0

    .line 397
    array-length v7, v1

    if-nez v7, :cond_ac

    .line 399
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 403
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 404
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 406
    if-eqz v1, :cond_ce

    array-length v0, v1

    if-lez v0, :cond_ce

    .line 407
    const-string v0, "ClockWeather"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid:ids.lnth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->firstUpdate:Z

    .line 409
    const/4 v0, 0x1

    .line 419
    :cond_ac
    sget-object v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v7, :cond_d6

    .line 421
    const-string v7, "ClockWeather"

    const-string v8, "dbhelper is null!!"

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v7, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 432
    :cond_c2
    :goto_c2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 434
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->onBoot:Z

    .line 815
    :cond_cd
    :goto_cd
    return-void

    .line 413
    :cond_ce
    const-string v0, "ClockWeather"

    const-string v1, "The widget does not exist in idle!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 426
    :cond_d6
    sget-object v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c2

    .line 427
    sget-object v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v8, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    goto :goto_c2

    .line 437
    :cond_e7
    const-string v7, "com.sec.android.widgetapp.weathercolco.action.DETAIL_RESULT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1af

    .line 439
    const-string v0, "ClockWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : com.sec.android.widgetapp.weathercolco.action.DETAIL_RESULT :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v0, "WEATHER_CLOCK_NEW_LOCATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    if-eqz v2, :cond_cd

    .line 446
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v3

    .line 447
    const/4 v1, 0x0

    .line 449
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v0, :cond_138

    .line 451
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_122
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    .line 453
    iget-object v5, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_592

    :goto_136
    move-object v1, v0

    .line 454
    goto :goto_122

    .line 458
    :cond_138
    if-eqz v3, :cond_162

    if-eqz v1, :cond_162

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    if-eqz v0, :cond_162

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 464
    :cond_162
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 465
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 467
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 471
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p1, v6}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v6, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 473
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v0, :cond_196

    .line 475
    const-string v0, "ClockWeather"

    const-string v1, "dbhelper is null!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_18e
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    .line 488
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    goto/16 :goto_cd

    .line 480
    :cond_196
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a6

    .line 481
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 484
    :cond_1a6
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    goto :goto_18e

    .line 492
    :cond_1af
    const-string v6, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1bf

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_273

    .line 494
    :cond_1bf
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 495
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 496
    const-string v0, "ClockWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_1eb

    .line 501
    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->selectcity:Ljava/lang/String;

    .line 502
    :cond_1eb
    const-string v0, "selectLastCity"

    const/16 v2, 0xa

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 503
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1f9

    .line 504
    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherIndex:I

    .line 507
    :cond_1f9
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 509
    array-length v3, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_202
    if-ge v2, v3, :cond_257

    aget v4, v1, v2

    .line 513
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v5, 0xfa000

    if-ne v0, v5, :cond_22b

    .line 515
    const v0, 0x7f030032

    .line 533
    :goto_212
    invoke-static {p1, v4}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v5

    if-eqz v5, :cond_21c

    .line 534
    invoke-static {p1, v4}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v0

    .line 536
    :cond_21c
    invoke-static {p1, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setWidgetLayout(Landroid/content/Context;II)V

    .line 537
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v4, v0, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 509
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_202

    .line 518
    :cond_22b
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v5, 0xe1000

    if-eq v0, v5, :cond_23d

    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v5, 0x5dc00

    if-ne v0, v5, :cond_253

    .line 522
    :cond_23d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_24f

    .line 523
    const v0, 0x7f03002f

    goto :goto_212

    .line 525
    :cond_24f
    const v0, 0x7f030030

    goto :goto_212

    .line 529
    :cond_253
    const v0, 0x7f03002f

    goto :goto_212

    .line 540
    :cond_257
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v0, :cond_26a

    .line 542
    const-string v0, "ClockWeather"

    const-string v1, "dbhelper is null!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_262
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    .line 550
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    goto/16 :goto_cd

    .line 546
    :cond_26a
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    goto :goto_262

    .line 552
    :cond_273
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28b

    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28b

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29c

    .line 554
    :cond_28b
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    .line 556
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-lez v0, :cond_cd

    .line 558
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    goto/16 :goto_cd

    .line 561
    :cond_29c
    const-string v6, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c1

    .line 563
    if-ltz v5, :cond_2ac

    invoke-static {p1, v5}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_2b7

    .line 565
    :cond_2ac
    if-eqz v0, :cond_cd

    .line 567
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showProblemUI(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_cd

    .line 576
    :cond_2b7
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 577
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 579
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->onBoot:Z

    if-eqz v0, :cond_2d0

    .line 581
    invoke-static {p1, v5}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_2d0

    .line 583
    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_2d0
    const/4 v0, 0x0

    .line 588
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0xfa000

    if-ne v1, v2, :cond_338

    .line 590
    const/4 v1, 0x2

    if-ne v3, v1, :cond_311

    const/4 v1, 0x1

    if-ne v4, v1, :cond_311

    .line 592
    const v0, 0x7f03002d

    .line 593
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    .line 666
    :cond_2e6
    :goto_2e6
    if-lez v0, :cond_2f2

    .line 668
    invoke-static {p1, v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setWidgetLayout(Landroid/content/Context;II)V

    .line 669
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    .line 672
    :cond_2f2
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v0, :cond_2fd

    .line 674
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 676
    :cond_2fd
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    .line 678
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-lez v0, :cond_cd

    .line 680
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    .line 681
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    goto/16 :goto_cd

    .line 595
    :cond_311
    const/4 v1, 0x2

    if-ne v3, v1, :cond_31e

    const/4 v1, 0x2

    if-ne v4, v1, :cond_31e

    .line 597
    const v0, 0x7f03002e

    .line 598
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto :goto_2e6

    .line 600
    :cond_31e
    const/4 v1, 0x5

    if-ne v3, v1, :cond_32b

    const/4 v1, 0x1

    if-ne v4, v1, :cond_32b

    .line 602
    const v0, 0x7f030031

    .line 603
    const/4 v1, 0x5

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto :goto_2e6

    .line 605
    :cond_32b
    const/4 v1, 0x5

    if-ne v3, v1, :cond_2e6

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2e6

    .line 607
    const v0, 0x7f030032

    .line 608
    const/4 v1, 0x6

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto :goto_2e6

    .line 612
    :cond_338
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0xe1000

    if-eq v1, v2, :cond_34a

    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0x5dc00

    if-ne v1, v2, :cond_380

    .line 615
    :cond_34a
    const/4 v1, 0x2

    if-ne v3, v1, :cond_357

    const/4 v1, 0x1

    if-ne v4, v1, :cond_357

    .line 617
    const v0, 0x7f03002d

    .line 618
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto :goto_2e6

    .line 620
    :cond_357
    const/4 v1, 0x2

    if-ne v3, v1, :cond_364

    const/4 v1, 0x2

    if-ne v4, v1, :cond_364

    .line 622
    const v0, 0x7f03002e

    .line 623
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto :goto_2e6

    .line 625
    :cond_364
    const/4 v1, 0x4

    if-ne v3, v1, :cond_372

    const/4 v1, 0x1

    if-ne v4, v1, :cond_372

    .line 627
    const v0, 0x7f03002f

    .line 628
    const/4 v1, 0x3

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 630
    :cond_372
    const/4 v1, 0x4

    if-ne v3, v1, :cond_2e6

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2e6

    .line 632
    const v0, 0x7f030030

    .line 633
    const/4 v1, 0x4

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 638
    :cond_380
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0x25800

    if-ne v1, v2, :cond_3b3

    .line 640
    const/4 v1, 0x2

    if-ne v3, v1, :cond_397

    const/4 v1, 0x2

    if-ne v4, v1, :cond_397

    .line 642
    const v0, 0x7f03002e

    .line 643
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 645
    :cond_397
    const/4 v1, 0x4

    if-ne v3, v1, :cond_3a5

    const/4 v1, 0x1

    if-ne v4, v1, :cond_3a5

    .line 647
    const v0, 0x7f03002f

    .line 648
    const/4 v1, 0x3

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 650
    :cond_3a5
    const/4 v1, 0x4

    if-ne v3, v1, :cond_2e6

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2e6

    .line 652
    const v0, 0x7f030030

    .line 653
    const/4 v1, 0x4

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 659
    :cond_3b3
    const/4 v1, 0x4

    if-ne v3, v1, :cond_2e6

    const/4 v1, 0x1

    if-ne v4, v1, :cond_2e6

    .line 661
    const v0, 0x7f03002f

    .line 662
    const/4 v1, 0x3

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mMainLayoutId:I

    goto/16 :goto_2e6

    .line 684
    :cond_3c1
    const-string v3, "com.sec.android.widgetapp.weatherclock.action.MANUAL_REFRESH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_410

    .line 686
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f7

    .line 688
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    if-nez v0, :cond_3d9

    .line 689
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    .line 691
    :cond_3d9
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->stopThreads()V

    .line 693
    const/4 v0, 0x0

    move v2, v0

    :goto_3de
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_cd

    .line 695
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherContainer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V

    .line 693
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3de

    .line 700
    :cond_3f7
    array-length v2, v1

    const/4 v0, 0x0

    :goto_3f9
    if-ge v0, v2, :cond_cd

    aget v3, v1, v0

    .line 702
    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-static {p1, v3}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f9

    .line 707
    :cond_410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48a

    .line 708
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 711
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 713
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCAN_RESULTS_AVAILABLE_ACTION::Detail State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   CHECK_AFTER_CONNECTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-boolean v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    if-eqz v1, :cond_cd

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 717
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    .line 718
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 719
    const/4 v0, 0x0

    const-string v1, "Cannot detect WF... AR via 3G"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 721
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    .line 722
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_cd

    .line 727
    :cond_48a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->CONNECTION_CHANGED:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51a

    .line 730
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CnnctChng::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   ChkAftCnnct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 737
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->AUTOREFRESH_AFTER_CONNECTED:Z

    if-eqz v0, :cond_4d9

    .line 739
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_cd

    .line 742
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;[I)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_cd

    .line 762
    :cond_4d9
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    if-eqz v0, :cond_cd

    .line 765
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 767
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 769
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AR Aftr WF Cnnctd... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    .line 772
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    .line 773
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->refreshhandler:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->sendEmptyMessage(I)Z

    .line 775
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->CHECK_AFTER_CONNECTED:Z

    goto/16 :goto_cd

    .line 780
    :cond_51a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp.weatherclock.action.SERVICE_SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52b

    .line 781
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    goto/16 :goto_cd

    .line 783
    :cond_52b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53f

    .line 785
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 786
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    goto/16 :goto_cd

    .line 788
    :cond_53f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55e

    .line 790
    if-eqz v0, :cond_556

    .line 792
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showProblemUI(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_cd

    .line 797
    :cond_556
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    .line 798
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    goto/16 :goto_cd

    .line 801
    :cond_55e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.widgetapp.weathercolco.action.CHANGE_SETTING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 803
    const-string v0, "SEND_DAEMON_SETTING_UPDATE_WIDGET"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 805
    const/4 v2, 0x1

    if-ne v0, v2, :cond_58d

    .line 806
    array-length v2, v1

    const/4 v0, 0x0

    :goto_576
    if-ge v0, v2, :cond_cd

    aget v3, v1, v0

    .line 808
    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-static {p1, v3}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_576

    .line 812
    :cond_58d
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setAutoScrollTime()V

    goto/16 :goto_cd

    :cond_592
    move-object v0, v1

    goto/16 :goto_136
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 13
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v8, 0x1

    .line 162
    const-string v6, "ClockWeather"

    const-string v7, "onUpdate()"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v6, Landroid/content/Intent;

    const-string v7, "weather.action.startservice"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    .line 167
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->width:I

    .line 168
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->height:I

    .line 171
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 173
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v6

    if-eq v6, v8, :cond_4a

    .line 174
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    sget-object v7, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 177
    :cond_4a
    if-eqz p2, :cond_7f

    if-eqz p3, :cond_7f

    .line 179
    array-length v0, p3

    .line 180
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_50
    if-ge v1, v0, :cond_83

    .line 182
    aget v2, p3, v1

    .line 185
    .local v2, id:I
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v6

    if-eqz v6, :cond_79

    .line 187
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v4

    .line 189
    .local v4, layoutId:I
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, loc:Ljava/lang/String;
    if-eqz v5, :cond_6d

    .line 191
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->infos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v5           #loc:Ljava/lang/String;
    :cond_6d
    :goto_6d
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->addWidgetIds(Landroid/content/Context;I)V

    .line 203
    invoke-static {p1, v2, v4}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setWidgetLayout(Landroid/content/Context;II)V

    .line 205
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 195
    .end local v4           #layoutId:I
    :cond_79
    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 196
    .local v3, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v3, :cond_80

    .line 238
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7f
    :goto_7f
    return-void

    .line 199
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #id:I
    .restart local v3       #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_80
    iget v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .restart local v4       #layoutId:I
    goto :goto_6d

    .line 208
    .end local v2           #id:I
    .end local v3           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4           #layoutId:I
    :cond_83
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v6, :cond_c0

    .line 210
    const-string v6, "ClockWeather"

    const-string v7, "dbhelper is null!!"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_8e
    sget-boolean v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->firstUpdate:Z

    if-eqz v6, :cond_a2

    .line 219
    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->firstUpdate:Z

    .line 220
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isNeedLocate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a2

    sget v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-nez v6, :cond_a2

    .line 222
    invoke-static {p1, p3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performLocate(Landroid/content/Context;[I)V

    .line 227
    :cond_a2
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isLocatingDialogProgress(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b4

    sget v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    if-lez v6, :cond_b4

    .line 229
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V

    .line 230
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    .line 233
    :cond_b4
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isLocatingDialogProgress(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_7f

    .line 235
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setAutoScrollTime()V

    goto :goto_7f

    .line 214
    :cond_c0
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v6

    sput v6, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->mWeatherCount:I

    goto :goto_8e
.end method

.method public showProblemUI(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2140
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03001c

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2141
    array-length v2, p3

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_18

    aget v3, p3, v0

    .line 2142
    invoke-virtual {p2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2141
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2143
    :cond_18
    return-void
.end method
