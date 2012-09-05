.class Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;
.super Lcom/sec/android/daemonapp/http/HttpResponseHandler;
.source "AccuWeatherDaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->performNetworkAccess(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$tempScaleSetting:I


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;ILandroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iput p2, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$tempScaleSetting:I

    iput-object p3, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "respCd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",respStus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v5, 0xc8

    if-ne p2, v5, :cond_d1

    .line 459
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    new-instance v6, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    invoke-direct {v6}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;-><init>()V

    #setter for: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$102(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;)Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 461
    .local v1, timeValue:J
    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/common/Util;->getTimestamp(J)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, updateDate:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    #getter for: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    invoke-static {v5}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$100(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$tempScaleSetting:I

    invoke-virtual {v5, v6, p4, v4}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->parseDetailWeather(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    move-result-object v0

    .line 465
    .local v0, detailInfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    if-eqz v0, :cond_d2

    .line 467
    invoke-virtual {v0}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/daemonapp/info/TodayWeatherInfo;

    move-result-object v3

    .line 469
    .local v3, todayWeatherInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_current_temp"

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getCurrentTemp()F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 470
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_high_temp"

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 471
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_low_temp"

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 472
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_temp_scale"

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getTempScale()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_icon_num"

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getIconNum()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_weather_text"

    iget-object v7, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v7, v7, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getIconNum()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/daemonapp/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_updated_time"

    invoke-static {v5, v6, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 477
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$202(Z)Z

    .line 478
    const-string v5, ""

    const-string v6, "DatRetreBrdcassue"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;->val$ctx:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    .end local v0           #detailInfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    .end local v1           #timeValue:J
    .end local v3           #todayWeatherInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    .end local v4           #updateDate:Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void

    .line 484
    .restart local v0       #detailInfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    .restart local v1       #timeValue:J
    .restart local v4       #updateDate:Ljava/lang/String;
    :cond_d2
    const-string v5, ""

    const-string v6, "DRetfa"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1
.end method
