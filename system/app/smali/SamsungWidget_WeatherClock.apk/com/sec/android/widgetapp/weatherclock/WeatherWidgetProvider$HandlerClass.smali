.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$HandlerClass;
.super Landroid/os/Handler;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerClass"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2329
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$HandlerClass;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x65

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 2333
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_132

    .line 2389
    :cond_21
    :goto_21
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2390
    return-void

    .line 2338
    :pswitch_25
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2341
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 2342
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$902(Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 2344
    :cond_3d
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v0

    if-eq v0, v6, :cond_52

    .line 2345
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 2349
    :cond_52
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoscrollSettings()I

    move-result v0

    if-nez v0, :cond_64

    .line 2351
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_21

    .line 2354
    :cond_64
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HLER_EET_WTHER_SOLL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v0

    .line 2358
    array-length v1, v0

    if-nez v1, :cond_12f

    .line 2360
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    move-object v7, v0

    .line 2364
    :goto_ab
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2202(Z)Z

    move v8, v9

    .line 2365
    :goto_af
    array-length v0, v7

    if-ge v8, v0, :cond_ec

    .line 2367
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    aget v2, v7, v8

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2368
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    aget v3, v7, v8

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    aget v10, v7, v8

    invoke-static {v5, v10}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v5

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->setWeatherData(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V
    invoke-static/range {v0 .. v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2300(Landroid/content/Context;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;IZ)V

    .line 2365
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_af

    .line 2370
    :cond_ec
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2202(Z)Z

    .line 2371
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2000()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2373
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$2400()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_21

    .line 2378
    :pswitch_106
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InfoAlarmWidgetIntents.ACTION_SERVICE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2381
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.widgetapp.infoalarm"

    const-string v3, "com.sec.android.widgetapp.infoalarm.engine.InfoAlarmWidgetReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2383
    const-string v1, "INFOALARM_SERVICE"

    const-string v2, "GET_WEATHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2384
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_21

    :cond_12f
    move-object v7, v0

    goto/16 :goto_ab

    .line 2335
    :pswitch_data_132
    .packed-switch 0x65
        :pswitch_25
        :pswitch_106
    .end packed-switch
.end method
