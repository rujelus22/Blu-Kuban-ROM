.class public Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;
.super Landroid/content/BroadcastReceiver;
.source "AccuWeatherDaemonService.java"


# static fields
.field private static AUTOREFRESH_AFTER_CONNECTED:Z = false

.field private static final DELAY_TIME:J = 0x2710L

.field public static sendPakageNames:[Ljava/lang/String;


# instance fields
.field getLocDataHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field mCtx:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

.field private mcl:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

.field private parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->handler:Landroid/os/Handler;

    .line 502
    new-instance v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$3;-><init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocDataHandler:Landroid/os/Handler;

    return-void
.end method

.method private CheckAppServiceStatus(Landroid/content/Context;I)Z
    .registers 10
    .parameter "ctx"
    .parameter "appServiceStatus"

    .prologue
    const/4 v3, 0x1

    .line 624
    sget-object v4, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v1, v4, 0x1

    .line 625
    .local v1, get_Pakag_Length:I
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, binaryString:Ljava/lang/String;
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_26

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 630
    :cond_26
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    if-ge v2, v1, :cond_4b

    .line 631
    shr-int v4, p2, v2

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_48

    .line 632
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppVal:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_47
    return v3

    .line 630
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 638
    :cond_4b
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private ReadXML(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 321
    const-string v0, ""

    const-string v1, " ========================================= "

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocationInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;)Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->AUTOREFRESH_AFTER_CONNECTED:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->ReadXML(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->viewSystemDB(Landroid/content/Context;)V

    return-void
.end method

.method private cancelAutoRefreshAlarm(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    .line 420
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.accuweatherdaemon.action.AUTOREFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x800

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 422
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 423
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 425
    const-string v3, ""

    const-string v4, "CnclAtRftAl"

    invoke-static {v3, v4}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    .line 431
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #sender:Landroid/app/PendingIntent;
    :goto_20
    return-void

    .line 427
    :catch_21
    move-exception v1

    .line 429
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Error detected ! "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private static getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "timemills"
    .parameter "ctx"

    .prologue
    .line 328
    :try_start_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 329
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 331
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 332
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v4

    .line 335
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    :goto_2c
    return-object v4

    .line 334
    :catch_2d
    move-exception v2

    .line 335
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_2c
.end method

.method private getLocationInfo()V
    .registers 5

    .prologue
    .line 496
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s tm get NLocInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mcl:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocDataHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->performGetCurrentLocation(Landroid/os/Handler;IZ)V

    .line 499
    return-void
.end method

.method private isFirst(Landroid/content/Context;)Z
    .registers 5
    .parameter "ctx"

    .prologue
    .line 614
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_updated_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    .line 615
    const/4 v1, 0x0

    .line 619
    :goto_a
    return v1

    .line 617
    :catch_b
    move-exception v0

    .line 618
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, ""

    const-string v2, "aw_daemon_service_key_updated_time has not been set yet."

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private isPassedTime(Landroid/content/Context;)Z
    .registers 16
    .parameter "ctx"

    .prologue
    .line 352
    const-wide/16 v3, 0x0

    .line 353
    .local v3, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 354
    .local v6, now:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_autorefresh_interval"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 355
    .local v8, period:I
    const-wide/16 v1, 0x0

    .line 357
    .local v1, interval:J
    packed-switch v8, :pswitch_data_e8

    .line 367
    :goto_16
    :try_start_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_updated_time"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    .line 368
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 370
    .local v5, nf:Ljava/text/NumberFormat;
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isPassed]now            :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1, v6, v7}, Lcom/sec/android/daemonapp/common/Util;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isPassed]latUpT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-long v11, v3, v1

    invoke-static {p1, v11, v12}, Lcom/sec/android/daemonapp/common/Util;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isPassed]interval       :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v10, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isPassed]now - latUpT "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v11, v6, v3

    invoke-virtual {v5, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v3

    cmp-long v9, v12, v1

    if-lez v9, :cond_d8

    const/4 v9, 0x1

    :goto_aa
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_16 .. :try_end_b5} :catch_dc

    .line 377
    sub-long v9, v6, v3

    cmp-long v9, v9, v1

    if-lez v9, :cond_da

    const/4 v9, 0x1

    .line 381
    .end local v5           #nf:Ljava/text/NumberFormat;
    :goto_bc
    return v9

    .line 358
    :pswitch_bd
    const/4 v9, 0x0

    goto :goto_bc

    .line 359
    :pswitch_bf
    const-wide/32 v1, 0x36ee80

    goto/16 :goto_16

    .line 360
    :pswitch_c4
    const-wide/32 v1, 0xa4cb80

    goto/16 :goto_16

    .line 361
    :pswitch_c9
    const-wide/32 v1, 0x1499700

    goto/16 :goto_16

    .line 362
    :pswitch_ce
    const-wide/32 v1, 0x2932e00

    goto/16 :goto_16

    .line 363
    :pswitch_d3
    const-wide/32 v1, 0x5265c00

    goto/16 :goto_16

    .line 374
    .restart local v5       #nf:Ljava/text/NumberFormat;
    :cond_d8
    const/4 v9, 0x0

    goto :goto_aa

    .line 377
    :cond_da
    const/4 v9, 0x0

    goto :goto_bc

    .line 379
    .end local v5           #nf:Ljava/text/NumberFormat;
    :catch_dc
    move-exception v0

    .line 380
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, ""

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v9, 0x0

    goto :goto_bc

    .line 357
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_bf
        :pswitch_c4
        :pswitch_c9
        :pswitch_ce
        :pswitch_d3
    .end packed-switch
.end method

.method private performNetworkAccess(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 13
    .parameter "ctx"
    .parameter "location"
    .parameter "tempScaleSetting"

    .prologue
    .line 435
    const-string v1, ""

    const-string v2, "Nss"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 439
    new-instance v0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    invoke-direct {v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v6, mHttpThreads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    new-instance v8, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    invoke-direct {v8, p1}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    .line 442
    .local v8, urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;
    invoke-virtual {v8}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 443
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    invoke-virtual {v8, p2, p3}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 445
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_4c

    .line 447
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pmNtwAccs UL "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;

    invoke-direct {v5, p0, p3, p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$2;-><init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;ILandroid/content/Context;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v7

    .line 490
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v7           #t:Ljava/lang/Thread;
    :cond_4c
    return-void
.end method

.method public static sendPackages(Landroid/content/Context;)V
    .registers 9
    .parameter "ctx"

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 588
    .local v3, pm:Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    if-eqz v5, :cond_62

    .line 589
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    sget-object v5, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_62

    .line 591
    :try_start_e
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendPakages] PakageName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v5, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 593
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 596
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_44} :catch_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e .. :try_end_44} :catch_50
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_44} :catch_59

    .line 589
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #sender:Landroid/app/PendingIntent;
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 598
    :catch_47
    move-exception v0

    .line 599
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, ""

    const-string v6, "[NameNotFoundException] sandPakage !!!!!"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 601
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_50
    move-exception v0

    .line 602
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v5, ""

    const-string v6, "[CanceledException] sandPakage !!!!!"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 604
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_59
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/Exception;
    const-string v5, ""

    const-string v6, "[Exception] sandPakage !!!!!"

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 610
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_62
    return-void
.end method

.method private setAutoRefreshAlarm(Landroid/content/Context;I)V
    .registers 13
    .parameter "ctx"
    .parameter "period"

    .prologue
    .line 388
    const-wide/16 v4, 0x0

    .line 390
    .local v4, interval:J
    packed-switch p2, :pswitch_data_ce

    .line 397
    :goto_5
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_20

    .line 414
    :goto_b
    return-void

    .line 391
    :pswitch_c
    const-wide/32 v4, 0x36ee80

    goto :goto_5

    .line 392
    :pswitch_10
    const-wide/32 v4, 0xa4cb80

    goto :goto_5

    .line 393
    :pswitch_14
    const-wide/32 v4, 0x1499700

    goto :goto_5

    .line 394
    :pswitch_18
    const-wide/32 v4, 0x2932e00

    goto :goto_5

    .line 395
    :pswitch_1c
    const-wide/32 v4, 0x5265c00

    goto :goto_5

    .line 399
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.accuweatherdaemon.action.AUTOREFRESH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x800

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 401
    .local v6, sender:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 402
    .local v0, alarm:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 404
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAutoRefreshAlarm]now            :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/daemonapp/common/Util;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAutoRefreshAlarm]latUpT :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {p1, v8, v9}, Lcom/sec/android/daemonapp/common/Util;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAutoRefreshAlarm]interval       :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAutoRefreshAlarm]interval ms    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_c0} :catch_c2

    goto/16 :goto_b

    .line 410
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v6           #sender:Landroid/app/PendingIntent;
    :catch_c2
    move-exception v7

    .line 412
    .local v7, ex:Ljava/lang/Exception;
    const-string v1, "Error detected ! "

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 390
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method private viewSystemDB(Landroid/content/Context;)V
    .registers 12
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 283
    const-wide/16 v1, 0x0

    .line 286
    .local v1, timeValue:J
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_updated_time"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_d} :catch_13d

    move-result-wide v1

    .line 291
    :goto_e
    invoke-static {v1, v2, p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, updateTime:Ljava/lang/String;
    const-string v4, ""

    const-string v5, " ======= TheSerSysDDat ======= "

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_loc_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_high_temp"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LT  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_low_temp"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_icon_num"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", WT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "aw_daemon_service_key_icon_num"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {p1, v7}, Lcom/sec/android/daemonapp/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", L UT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SerSta : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_service_status"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AppSerSta : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_app_service_status"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ARI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", TS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v4, ""

    const-string v5, " ========================================= "

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 287
    .end local v3           #updateTime:Ljava/lang/String;
    :catch_13d
    move-exception v0

    .line 288
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_e
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "reqCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_c

    .line 346
    :goto_3
    return-void

    .line 343
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    const-string v1, "Search faild/canceled"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 341
    :pswitch_data_c
    .packed-switch 0x21
        :pswitch_4
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 51
    :try_start_0
    const-string v19, ""

    const-string v20, "Act"

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive start AUTOREFRESH_AFTER_CONNECTED : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->AUTOREFRESH_AFTER_CONNECTED:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    .line 54
    new-instance v19, Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mcl:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, action:Ljava/lang/String;
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Act : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v19, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    .line 59
    sget-object v19, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    if-nez v19, :cond_80

    .line 60
    const-string v19, ""

    const-string v20, "Pakenull"

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f04

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPakageNames:[Ljava/lang/String;

    .line 64
    :cond_80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_app_service_status"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 65
    .local v4, appServiceStatus:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_service_status"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 66
    .local v17, serviceStatus:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_loc_code"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, locCode:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_temp_scale"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 68
    .local v18, tempScale:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_autorefresh_interval"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 70
    .local v5, autoRefresh:I
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SerStus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",ASerStus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",Tmp:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",AtRfr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11f

    .line 73
    if-nez v5, :cond_10c

    .line 74
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    .line 280
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #appServiceStatus:I
    .end local v5           #autoRefresh:I
    .end local v11           #locCode:Ljava/lang/String;
    .end local v17           #serviceStatus:I
    .end local v18           #tempScale:I
    :cond_10b
    :goto_10b
    return-void

    .line 76
    .restart local v3       #action:Ljava/lang/String;
    .restart local v4       #appServiceStatus:I
    .restart local v5       #autoRefresh:I
    .restart local v11       #locCode:Ljava/lang/String;
    .restart local v17       #serviceStatus:I
    .restart local v18       #tempScale:I
    :cond_10c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->setAutoRefreshAlarm(Landroid/content/Context;I)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_113} :catch_114

    goto :goto_10b

    .line 277
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #appServiceStatus:I
    .end local v5           #autoRefresh:I
    .end local v11           #locCode:Ljava/lang/String;
    .end local v17           #serviceStatus:I
    .end local v18           #tempScale:I
    :catch_114
    move-exception v7

    .line 278
    .local v7, ex:Ljava/lang/Exception;
    const-string v19, "Error detected ! "

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    .line 79
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    .restart local v4       #appServiceStatus:I
    .restart local v5       #autoRefresh:I
    .restart local v11       #locCode:Ljava/lang/String;
    .restart local v17       #serviceStatus:I
    .restart local v18       #tempScale:I
    :cond_11f
    :try_start_11f
    const-string v19, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_209

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 81
    .local v8, extra:Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 83
    .local v16, sendWidgetUpdate:Z
    if-eqz v8, :cond_16e

    .line 84
    const/4 v14, 0x0

    .line 85
    .local v14, mWidget:Ljava/lang/String;
    const-string v19, "KEY_UPDATE_DAEMON_FROM_WIDGET"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 86
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d4

    const/16 v16, 0x1

    .line 87
    :goto_146
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mWdt = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sndWdtUpt  = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v14           #mWidget:Ljava/lang/String;
    :cond_16e
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_188

    if-nez v17, :cond_1e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->CheckAppServiceStatus(Landroid/content/Context;I)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e0

    .line 92
    :cond_188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_service_status"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const/16 v17, 0x1

    .line 95
    invoke-static/range {p1 .. p1}, Lcom/sec/android/daemonapp/common/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_19e

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocationInfo()V

    .line 99
    :cond_19e
    const-string v19, ""

    const-string v20, "getDmCL"

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-nez v5, :cond_1d8

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    .line 117
    :cond_1aa
    :goto_1aa
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SetservStus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",AservStus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    .line 86
    .restart local v14       #mWidget:Ljava/lang/String;
    :cond_1d4
    const/16 v16, 0x0

    goto/16 :goto_146

    .line 105
    .end local v14           #mWidget:Ljava/lang/String;
    :cond_1d8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->setAutoRefreshAlarm(Landroid/content/Context;I)V

    goto :goto_1aa

    .line 108
    :cond_1e0
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_203

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->CheckAppServiceStatus(Landroid/content/Context;I)Z

    move-result v19

    if-nez v19, :cond_203

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_service_status"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    .line 111
    const/16 v17, 0x0

    goto :goto_1aa

    .line 113
    :cond_203
    if-nez v17, :cond_1aa

    .line 114
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    goto :goto_1aa

    .line 120
    .end local v8           #extra:Landroid/os/Bundle;
    .end local v16           #sendWidgetUpdate:Z
    :cond_209
    const-string v19, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29c

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 123
    .restart local v8       #extra:Landroid/os/Bundle;
    if-eqz v8, :cond_293

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_current_temp"

    const-string v21, "KEY_CURRENT_TEMP"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_high_temp"

    const-string v21, "KEY_HIGH_TEMP"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_low_temp"

    const-string v21, "KEY_LOW_TEMP"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_icon_num"

    const-string v21, "KEY_ICON_NUM"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_weather_text"

    const-string v21, "KEY_ICON_NUM"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_updated_time"

    const-string v21, "KEY_UPDATE_TIME"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 131
    const/16 v19, 0x0

    sput-boolean v19, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPackages(Landroid/content/Context;)V

    .line 134
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->viewSystemDB(Landroid/content/Context;)V

    goto/16 :goto_10b

    .line 137
    :cond_293
    const-string v19, ""

    const-string v20, "Bundate:Donothing."

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    .line 141
    .end local v8           #extra:Landroid/os/Bundle;
    :cond_29c
    const-string v19, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_47b

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 144
    .restart local v8       #extra:Landroid/os/Bundle;
    if-eqz v8, :cond_472

    .line 145
    const/4 v13, 0x0

    .line 146
    .local v13, mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    new-instance v13, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    .end local v13           #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v13       #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    const-string v19, "SERVICE_STATUS"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2db

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_service_status"

    const-string v21, "SERVICE_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    :cond_2db
    const-string v19, "CITY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2fc

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_loc_code"

    const-string v21, "CITY_ID"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    :cond_2fc
    const-string v19, "CITY"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31d

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_city_name"

    const-string v21, "CITY"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    :cond_31d
    const-string v19, "STATE"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33e

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_city_state"

    const-string v21, "STATE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    :cond_33e
    const-string v19, "TEMPSCALE"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_40f

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_temp_scale"

    const-string v21, "TEMPSCALE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    const-string v19, "TEMPSCALE"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_40f

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_current_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .line 160
    .local v6, currentTemp:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_high_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    .line 161
    .local v10, highTemp:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_low_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 163
    .local v12, lowTemp:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_current_temp"

    const-string v21, "TEMPSCALE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_high_temp"

    const-string v21, "TEMPSCALE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1, v10}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_low_temp"

    const-string v21, "TEMPSCALE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 169
    .end local v6           #currentTemp:F
    .end local v10           #highTemp:F
    .end local v12           #lowTemp:F
    :cond_40f
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10b

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_autorefresh_interval"

    const-string v21, "AUTOREFRESH"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->updateAutoRefreshTime(I)I

    .line 172
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_10b

    .line 173
    const-string v19, ""

    const-string v20, "Changed AutoRefresh_Interval so ReSetting..."

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_45f

    .line 175
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    goto/16 :goto_10b

    .line 177
    :cond_45f
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->setAutoRefreshAlarm(Landroid/content/Context;I)V

    goto/16 :goto_10b

    .line 184
    .end local v13           #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    :cond_472
    const-string v19, ""

    const-string v20, "Bundate:Donothing."

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    .line 187
    .end local v8           #extra:Landroid/os/Bundle;
    :cond_47b
    const-string v19, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6c0

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 191
    .restart local v8       #extra:Landroid/os/Bundle;
    if-eqz v8, :cond_10b

    .line 192
    const/4 v13, 0x0

    .line 193
    .restart local v13       #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    new-instance v13, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    .end local v13           #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 195
    .restart local v13       #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    const-string v19, "TEMPSCALE"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_65d

    .line 196
    const/4 v9, 0x0

    .line 197
    .local v9, fromScale:I
    const/4 v6, 0x0

    .line 198
    .restart local v6       #currentTemp:F
    const/4 v10, 0x0

    .line 199
    .restart local v10       #highTemp:F
    const/4 v12, 0x0

    .line 200
    .restart local v12       #lowTemp:F
    const/4 v15, 0x0

    .line 202
    .local v15, result:I
    const-string v19, "TEMPSCALE"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_temp_scale"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_current_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_high_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_low_temp"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 208
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n before CT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_current_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", HT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_high_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", LT  : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_low_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", TS : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_temp_scale"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_current_temp"

    invoke-static {v9, v15, v6}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_high_temp"

    invoke-static {v9, v15, v10}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_low_temp"

    invoke-static {v9, v15, v12}, Lcom/sec/android/daemonapp/common/Util;->convertTemp(IIF)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_temp_scale"

    const-string v21, "TEMPSCALE"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n after CT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_current_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", HT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_high_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", LT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_low_temp"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", TS : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "aw_daemon_service_key_temp_scale"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v6           #currentTemp:F
    .end local v9           #fromScale:I
    .end local v10           #highTemp:F
    .end local v12           #lowTemp:F
    .end local v15           #result:I
    :cond_65d
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10b

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "aw_daemon_service_key_autorefresh_interval"

    const-string v21, "AUTOREFRESH"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->updateAutoRefreshTime(I)I

    .line 232
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_10b

    .line 233
    const-string v19, ""

    const-string v20, "Changed AutoRefresh_Interval so ReSetting..."

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_6ad

    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    goto/16 :goto_10b

    .line 237
    :cond_6ad
    const-string v19, "AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->setAutoRefreshAlarm(Landroid/content/Context;I)V

    goto/16 :goto_10b

    .line 242
    .end local v8           #extra:Landroid/os/Bundle;
    .end local v13           #mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
    :cond_6c0
    const-string v19, "com.sec.android.widgetapp.accuweatherdaemon.action.AUTOREFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_70b

    .line 244
    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Act:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz v17, :cond_6f4

    if-eqz v11, :cond_6f4

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_700

    .line 247
    :cond_6f4
    const-string v19, ""

    const-string v20, "valunavai"

    invoke-static/range {v19 .. v20}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    goto/16 :goto_10b

    .line 252
    :cond_700
    invoke-static/range {p1 .. p1}, Lcom/sec/android/daemonapp/common/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_10b

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocationInfo()V

    goto/16 :goto_10b

    .line 256
    :cond_70b
    const-string v19, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_729

    const-string v19, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_729

    const-string v19, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10b

    .line 257
    :cond_729
    if-eqz v17, :cond_737

    if-eqz v11, :cond_737

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_73c

    .line 258
    :cond_737
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->cancelAutoRefreshAlarm(Landroid/content/Context;)V

    goto/16 :goto_10b

    .line 261
    :cond_73c
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->isPassedTime(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_10b

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/sec/android/daemonapp/common/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_764

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_764

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$1;-><init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V

    const-wide/16 v21, 0x2710

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_764
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->setAutoRefreshAlarm(Landroid/content/Context;I)V
    :try_end_76b
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_76b} :catch_114

    goto/16 :goto_10b
.end method
