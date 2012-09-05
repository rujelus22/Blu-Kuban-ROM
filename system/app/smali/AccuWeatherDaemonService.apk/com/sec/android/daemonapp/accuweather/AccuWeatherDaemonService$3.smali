.class Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;
.super Landroid/os/Handler;
.source "AccuWeatherDaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V
    .registers 2
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    .line 506
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "e tm get NLocInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x3f3

    if-ne v9, v10, :cond_2b

    .line 509
    const-string v8, ""

    const-string v9, "Datok"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_2a
    :goto_2a
    return-void

    .line 512
    :cond_2b
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x3f2

    if-ne v9, v10, :cond_39

    .line 514
    const-string v8, ""

    const-string v9, "NERtoDm"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 518
    :cond_39
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xca

    if-ne v9, v10, :cond_47

    .line 519
    const-string v8, ""

    const-string v9, "CLERtoDm"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 521
    :cond_47
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1b4

    .line 522
    const-string v9, ""

    const-string v10, "CLOK"

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 524
    .local v4, timeValue:J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "cityinfo"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/daemonapp/info/CityInfo;

    .line 525
    .local v1, cityinfo:Lcom/sec/android/daemonapp/info/CityInfo;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "detailinfo"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    .line 526
    .local v2, detailInfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "cityxmlinfo"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, xmlinfo:Ljava/lang/String;
    if-eqz v1, :cond_1ab

    if-eqz v2, :cond_1ab

    .line 530
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, CityID:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 533
    const-string v9, ""

    const-string v10, "============= >>>> first"

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-boolean v9, Lcom/sec/android/daemonapp/common/Constants;->USE_FAHRENHEIT:Z

    if-nez v9, :cond_af

    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f05

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1a8

    :cond_af
    move v3, v8

    .line 536
    .local v3, temp:I
    :goto_b0
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    #getter for: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    invoke-static {v9}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$300(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->updateAutoRefreshTime(I)I

    .line 538
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    .end local v3           #temp:I
    :cond_d3
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-virtual {v1}, Lcom/sec/android/daemonapp/info/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-virtual {v1}, Lcom/sec/android/daemonapp/info/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 543
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_state"

    invoke-virtual {v1}, Lcom/sec/android/daemonapp/info/CityInfo;->getState()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    invoke-virtual {v2}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/daemonapp/info/TodayWeatherInfo;

    move-result-object v6

    .line 547
    .local v6, todayWeatherInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    invoke-virtual {v6}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getCurrentTemp()F

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 548
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    invoke-virtual {v6}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getHighTemp()F

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 549
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    invoke-virtual {v6}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getLowTemp()F

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 550
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    invoke-virtual {v6}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getIconNum()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_weather_text"

    iget-object v11, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v11, v11, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->getIconNum()I

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/android/daemonapp/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_updated_time"

    invoke-static {v9, v10, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 554
    if-eqz v7, :cond_183

    .line 555
    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_detail_info"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 558
    :cond_183
    invoke-static {v8}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$202(Z)Z

    .line 560
    iget-object v8, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    #calls: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->ReadXML(Landroid/content/Context;)V
    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$400(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Landroid/content/Context;)V

    .line 561
    iget-object v8, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v8, v8, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPackages(Landroid/content/Context;)V

    .line 562
    iget-object v8, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    iget-object v9, v9, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    #calls: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->viewSystemDB(Landroid/content/Context;)V
    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$500(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Landroid/content/Context;)V

    .line 564
    const-string v8, ""

    const-string v9, "DRetg"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 535
    .end local v6           #todayWeatherInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    :cond_1a8
    const/4 v3, 0x1

    goto/16 :goto_b0

    .line 567
    .end local v0           #CityID:Ljava/lang/String;
    :cond_1ab
    const-string v8, ""

    const-string v9, "DRetgfa."

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 571
    .end local v1           #cityinfo:Lcom/sec/android/daemonapp/info/CityInfo;
    .end local v2           #detailInfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    .end local v4           #timeValue:J
    .end local v7           #xmlinfo:Ljava/lang/String;
    :cond_1b4
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xc9

    if-ne v8, v9, :cond_1c3

    .line 572
    const-string v8, ""

    const-string v9, "CLPRERtoDm"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 577
    :cond_1c3
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x3e7

    if-ne v8, v9, :cond_2a

    .line 578
    const-string v8, ""

    const-string v9, "SPERtoDm"

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method
