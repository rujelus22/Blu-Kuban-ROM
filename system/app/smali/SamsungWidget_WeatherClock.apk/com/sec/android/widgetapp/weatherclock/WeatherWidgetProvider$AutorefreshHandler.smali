.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;
.super Landroid/os/Handler;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutorefreshHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 302
    .local v7, now:J
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 303
    .local v2, lasttime:J
    cmp-long v9, v2, v7

    if-gtz v9, :cond_11d

    const/4 v4, 0x1

    .line 304
    .local v4, need_refresh:Z
    :goto_11
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v5

    .line 307
    .local v5, nexttime:J
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AR] now = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] LTM = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] need_AR = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastAutoRefreshUpdateTime(Landroid/content/Context;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_120

    .line 312
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AR] LUPTM = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastAutoRefreshUpdateTime(Landroid/content/Context;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SV = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_92
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->removeMessages(I)V

    .line 321
    const/4 v9, 0x0

    sub-long v10, v5, v7

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$AutorefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ARHandler now : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " LTM : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v4, :cond_142

    .line 327
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "need AR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$102(Z)Z

    .line 329
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v1

    .line 332
    .local v1, ids:[I
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_fe

    .line 333
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$300(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 335
    :cond_fe
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->stopThreads()V
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$400()V

    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_102
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_142

    .line 339
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
    invoke-static {v9, v1, v10, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 303
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v4           #need_refresh:Z
    .end local v5           #nexttime:J
    :cond_11d
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 316
    .restart local v4       #need_refresh:Z
    .restart local v5       #nexttime:J
    :cond_120
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AR] LUPTM = 0 SV = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 343
    :cond_142
    return-void
.end method
