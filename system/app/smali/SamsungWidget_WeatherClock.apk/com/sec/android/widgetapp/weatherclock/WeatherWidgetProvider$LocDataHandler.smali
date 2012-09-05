.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$LocDataHandler;
.super Landroid/os/Handler;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocDataHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1435
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    .line 1439
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_f1

    .line 1441
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt cd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_4e

    .line 1444
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2d
    if-ge v1, v4, :cond_96

    aget v2, v0, v1

    .line 1446
    .local v2, id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1447
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v5, v6, v2, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1450
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    :cond_4e
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xca

    if-ne v5, v6, :cond_7b

    .line 1452
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v0

    .restart local v0       #arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_5a
    if-ge v1, v4, :cond_96

    aget v2, v0, v1

    .line 1454
    .restart local v2       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1455
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v5, v6, v2, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1452
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1459
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    :cond_7b
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_97

    .line 1462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "cityinfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1465
    .local v3, info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    if-eqz v3, :cond_96

    .line 1467
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performGetACity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;[I)V

    .line 1499
    .end local v3           #info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    :cond_96
    return-void

    .line 1472
    :cond_97
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xc9

    if-ne v5, v6, :cond_c4

    .line 1474
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v0

    .restart local v0       #arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_a3
    if-ge v1, v4, :cond_96

    aget v2, v0, v1

    .line 1476
    .restart local v2       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1477
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v5, v6, v2, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1474
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 1480
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    :cond_c4
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_96

    .line 1482
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v0

    .restart local v0       #arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_d0
    if-ge v1, v4, :cond_96

    aget v2, v0, v1

    .line 1484
    .restart local v2       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1485
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v5, v6, v2, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1482
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 1492
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    :cond_f1
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v0

    .restart local v0       #arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_f7
    if-ge v1, v4, :cond_96

    aget v2, v0, v1

    .line 1494
    .restart local v2       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1495
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v5, v6, v2, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_f7
.end method
