.class Lcom/sec/android/widgetapp/weatherclock/WeatherService$1;
.super Landroid/content/BroadcastReceiver;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherService;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    if-nez p2, :cond_c

    .line 50
    const-string v4, "ClockWeather"

    const-string v5, "action : intent = null"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_b
    :goto_b
    return-void

    .line 53
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, action:Ljava/lang/String;
    const-string v4, "ClockWeather"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v4, "clock.date_format_changed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 59
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-static {p1, v4, v7, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 60
    invoke-static {p1, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDataFomat(Landroid/content/Context;Z)Z

    goto :goto_b

    .line 62
    :cond_3f
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 64
    :cond_57
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherService$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherService;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    .line 66
    :cond_64
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 68
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 69
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutorefreshHandler()V

    goto :goto_b

    .line 71
    :cond_73
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 75
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.weatherclock.action.SERVICE_SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    .line 77
    :cond_86
    const-string v4, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 78
    const-string v4, "MENUNUM"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, menunum:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_a2

    .line 80
    const-string v4, "AUTOREFRESH"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, DaemonRefresh:I
    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->setDaemonAccuRefresh(Landroid/content/Context;I)V

    goto/16 :goto_b

    .line 83
    .end local v0           #DaemonRefresh:I
    :cond_a2
    if-ne v3, v8, :cond_b

    .line 84
    const-string v4, "TEMP"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, DaemonTemp:I
    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->setDaemonTemp(Landroid/content/Context;I)V

    goto/16 :goto_b
.end method
