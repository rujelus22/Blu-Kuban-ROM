.class public Lcom/sec/android/widgetapp/weatherclock/WeatherService;
.super Landroid/app/Service;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;
    }
.end annotation


# instance fields
.field private mDateFormatObserver:Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherService$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "clock.date_format_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherService;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->mDateFormatObserver:Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://settings/system/date_format"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->mDateFormatObserver:Lcom/sec/android/widgetapp/weatherclock/WeatherService$DateFormatObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 134
    const-string v0, "ClockWeather"

    const-string v1, "SvcStrt"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    return v0
.end method
