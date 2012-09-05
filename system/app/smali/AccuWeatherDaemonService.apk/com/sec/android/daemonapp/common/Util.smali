.class public Lcom/sec/android/daemonapp/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM/dd/yyyy hh:mm a"

.field public static final HVGA:I = 0x25800

.field private static IMEI:Ljava/lang/String; = null

.field public static final WXVGA:I = 0xfa000

.field public static final hour:J = 0x36ee80L

.field public static final min:J = 0xea60L

.field public static prefs:Landroid/content/SharedPreferences;

.field static sdf:Ljava/text/SimpleDateFormat;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Debug(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 434
    const-string v0, "AccuWeatherDaemonService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method public static cancelToast()V
    .registers 1

    .prologue
    .line 529
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 530
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 531
    :cond_9
    return-void
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 536
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 537
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 538
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 539
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 541
    .local v1, isMobileAvail:Z
    if-nez v2, :cond_1e

    if-eqz v1, :cond_1f

    :cond_1e
    move v4, v5

    :cond_1f
    return v4
.end method

.method public static checkNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 546
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 549
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 550
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static convertTemp(IIF)I
    .registers 8
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "value"

    .prologue
    const-wide v3, 0x3ffccccccccccccdL

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, ct:F
    if-ne p0, p1, :cond_e

    .line 395
    move v0, p2

    .line 406
    :cond_9
    :goto_9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 398
    :cond_e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    .line 399
    const/high16 v1, 0x4200

    sub-float v1, p2, v1

    float-to-double v1, v1

    div-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9

    .line 401
    :cond_19
    if-nez p1, :cond_9

    .line 402
    float-to-double v1, p2

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4040

    add-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9
.end method

.method public static convertTemp(IIFZ)Ljava/lang/String;
    .registers 9
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "value"
    .parameter "resultFloat"

    .prologue
    const-wide v3, 0x3ffccccccccccccdL

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, ct:F
    if-ne p0, p1, :cond_f

    .line 413
    move v0, p2

    .line 429
    :cond_9
    :goto_9
    float-to-int v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 416
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 417
    const/high16 v1, 0x4200

    sub-float v1, p2, v1

    float-to-double v1, v1

    div-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9

    .line 419
    :cond_1a
    if-nez p1, :cond_9

    .line 420
    float-to-double v1, p2

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4040

    add-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9
.end method

.method public static getAutorefreshSetting(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 190
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "refresh_interval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 255
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 256
    .local v2, timestamp:J
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 258
    .local v0, dateformat:Ljava/text/DateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v4

    .line 261
    .end local v0           #dateformat:Ljava/text/DateFormat;
    .end local v2           #timestamp:J
    :goto_15
    return-object v4

    .line 260
    :catch_16
    move-exception v1

    .line 261
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_15
.end method

.method public static getDateStringShort2x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 293
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 295
    .local v9, timestamp:Ljava/lang/Long;
    if-eqz v9, :cond_6b

    .line 296
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 297
    .local v3, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 298
    .local v8, timeformat:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 299
    .local v6, now:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, date:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, current:Ljava/lang/String;
    const/4 v7, 0x0

    .line 303
    .local v7, result:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, index:I
    if-nez v5, :cond_4d

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    :goto_42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 322
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 332
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #dateformat:Ljava/text/DateFormat;
    .end local v5           #index:I
    .end local v6           #now:Ljava/util/Date;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #timeformat:Ljava/text/DateFormat;
    .end local v9           #timestamp:Ljava/lang/Long;
    :cond_4c
    :goto_4c
    return-object v7

    .line 309
    .restart local v0       #Year:Ljava/lang/String;
    .restart local v1       #current:Ljava/lang/String;
    .restart local v2       #date:Ljava/lang/String;
    .restart local v3       #dateformat:Ljava/text/DateFormat;
    .restart local v5       #index:I
    .restart local v6       #now:Ljava/util/Date;
    .restart local v7       #result:Ljava/lang/String;
    .restart local v8       #timeformat:Ljava/text/DateFormat;
    .restart local v9       #timestamp:Ljava/lang/Long;
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    if-ne v5, v10, :cond_60

    .line 311
    const/4 v10, 0x0

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 313
    :cond_60
    const/4 v10, -0x1

    if-ne v5, v10, :cond_65

    .line 315
    move-object v7, v2

    goto :goto_42

    .line 319
    :cond_65
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 328
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #dateformat:Ljava/text/DateFormat;
    .end local v5           #index:I
    .end local v6           #now:Ljava/util/Date;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #timeformat:Ljava/text/DateFormat;
    :cond_6b
    const-string v7, ""
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_4c

    .line 331
    .end local v9           #timestamp:Ljava/lang/Long;
    :catch_6e
    move-exception v4

    .line 332
    .local v4, ex:Ljava/lang/Exception;
    const-string v7, ""

    goto :goto_4c
.end method

.method public static getDateStringShort4x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 338
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 340
    .local v8, timestamp:Ljava/lang/Long;
    if-eqz v8, :cond_70

    .line 341
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 342
    .local v2, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 343
    .local v7, timeformat:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 344
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v9

    add-int/lit16 v9, v9, 0x76c

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, date:Ljava/lang/String;
    const/4 v6, 0x0

    .line 347
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 349
    .local v4, index:I
    if-nez v4, :cond_52

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 366
    :goto_36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 374
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #dateformat:Ljava/text/DateFormat;
    .end local v4           #index:I
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #timeformat:Ljava/text/DateFormat;
    .end local v8           #timestamp:Ljava/lang/Long;
    :goto_51
    return-object v9

    .line 353
    .restart local v0       #Year:Ljava/lang/String;
    .restart local v1       #date:Ljava/lang/String;
    .restart local v2       #dateformat:Ljava/text/DateFormat;
    .restart local v4       #index:I
    .restart local v5       #now:Ljava/util/Date;
    .restart local v6       #result:Ljava/lang/String;
    .restart local v7       #timeformat:Ljava/text/DateFormat;
    .restart local v8       #timestamp:Ljava/lang/Long;
    :cond_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-ne v4, v9, :cond_65

    .line 355
    const/4 v9, 0x0

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 357
    :cond_65
    const/4 v9, -0x1

    if-ne v4, v9, :cond_6a

    .line 359
    move-object v6, v1

    goto :goto_36

    .line 363
    :cond_6a
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 370
    .end local v0           #Year:Ljava/lang/String;
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #dateformat:Ljava/text/DateFormat;
    .end local v4           #index:I
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #timeformat:Ljava/text/DateFormat;
    :cond_70
    const-string v9, ""
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_51

    .line 373
    .end local v8           #timestamp:Ljava/lang/Long;
    :catch_73
    move-exception v3

    .line 374
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, ""

    goto :goto_51
.end method

.method public static getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 380
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 381
    .local v4, timestamp:J
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 382
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 385
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 386
    .local v0, date:Ljava/util/Date;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v6

    .line 389
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    .end local v4           #timestamp:J
    :goto_34
    return-object v6

    .line 388
    :catch_35
    move-exception v2

    .line 389
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_34
.end method

.method public static getDefaultCity(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 619
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "select_cityname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 604
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 605
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "select_city"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFirst(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 200
    const-string v0, "config"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 1

    .prologue
    .line 244
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->IMEI:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 245
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->IMEI:Ljava/lang/String;

    .line 248
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "1546660241885"

    goto :goto_6
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 235
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 237
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method public static getInputStreamtoString(Landroid/content/Context;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, os:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_22

    .line 83
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #os:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .restart local v2       #os:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 86
    .local v0, a:I
    :goto_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1f

    .line 87
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_14

    .line 89
    :cond_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 92
    .end local v0           #a:I
    .end local v1           #br:Ljava/io/BufferedReader;
    :cond_22
    if-eqz v2, :cond_28

    .line 93
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_28
    return-object v3
.end method

.method private static getInterval(I)J
    .registers 3
    .parameter "refreshsetting"

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_1a

    .line 124
    const-wide/16 v0, -0x1

    :goto_5
    return-wide v0

    .line 114
    :pswitch_6
    const-wide/32 v0, 0x36ee80

    goto :goto_5

    .line 116
    :pswitch_a
    const-wide/32 v0, 0xa4cb80

    goto :goto_5

    .line 118
    :pswitch_e
    const-wide/32 v0, 0x1499700

    goto :goto_5

    .line 120
    :pswitch_12
    const-wide/32 v0, 0x2932e00

    goto :goto_5

    .line 122
    :pswitch_16
    const-wide/32 v0, 0x5265c00

    goto :goto_5

    .line 111
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public static getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 448
    const-string v1, "LOCATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "last_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 177
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 178
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextTime(Landroid/content/Context;ZZ)J
    .registers 15
    .parameter "context"
    .parameter "forceSet"
    .parameter "need_refresh"

    .prologue
    const/4 v10, 0x1

    .line 129
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yy/MM/dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/sec/android/daemonapp/common/Util;->sdf:Ljava/text/SimpleDateFormat;

    .line 131
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v1

    .line 132
    .local v1, lasttime:J
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v0

    .line 133
    .local v0, interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 134
    .local v5, now:J
    const-wide/16 v3, 0x0

    .line 136
    .local v3, next:J
    if-eqz p1, :cond_4a

    .line 138
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 139
    .local v7, tmp:Landroid/text/format/Time;
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 140
    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 141
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->getInterval(I)J

    move-result-wide v10

    add-long v3, v8, v10

    .line 159
    .end local v7           #tmp:Landroid/text/format/Time;
    :cond_2f
    :goto_2f
    if-eqz p1, :cond_5e

    .line 161
    const-string v8, "@@@"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "util getnext by config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_49
    return-wide v3

    .line 145
    :cond_4a
    if-ne p2, v10, :cond_53

    .line 147
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long v3, v5, v8

    goto :goto_2f

    .line 150
    :cond_53
    move-wide v3, v1

    .line 152
    :goto_54
    cmp-long v8, v3, v5

    if-gtz v8, :cond_2f

    .line 153
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_54

    .line 164
    :cond_5e
    const-string v8, "@@@"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "util getnext by widget "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 195
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemResolution(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    .line 53
    const/4 v1, -0x1

    .line 56
    .local v1, resolution:I
    :try_start_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 58
    .local v2, sysDisplay:Landroid/view/Display;
    if-eqz v2, :cond_20

    .line 60
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0x25800

    if-ne v3, v4, :cond_21

    .line 62
    const v1, 0x25800

    .line 75
    .end local v2           #sysDisplay:Landroid/view/Display;
    :cond_20
    :goto_20
    return v1

    .line 64
    .restart local v2       #sysDisplay:Landroid/view/Display;
    :cond_21
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_33

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0xfa000

    if-ne v3, v4, :cond_20

    .line 66
    const v1, 0xfa000

    goto :goto_20

    .line 70
    .end local v2           #sysDisplay:Landroid/view/Display;
    :catch_33
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public static getTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 283
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy hh:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, timeformat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    .line 287
    .end local v1           #timeformat:Ljava/text/SimpleDateFormat;
    :goto_10
    return-object v2

    .line 286
    :catch_11
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_10
.end method

.method public static getTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 268
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 269
    .local v2, timestamp:J
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 271
    .local v1, timeformat:Ljava/text/DateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v4

    .line 275
    .end local v1           #timeformat:Ljava/text/DateFormat;
    .end local v2           #timestamp:J
    :goto_15
    return-object v4

    .line 274
    :catch_16
    move-exception v0

    .line 275
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_15
.end method

.method public static getTimestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 225
    .local v1, timeValue:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, timeStamp:Ljava/lang/String;
    return-object v0
.end method

.method public static getTimestamp(J)Ljava/lang/String;
    .registers 3
    .parameter "timeValue"

    .prologue
    .line 48
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeatherText(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "weatherIconNum"

    .prologue
    const v6, 0x7f06001f

    const v5, 0x7f06001b

    const v4, 0x7f060018

    const v3, 0x7f060013

    const v2, 0x7f060011

    .line 625
    const-string v0, ""

    .line 626
    .local v0, weatherText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_1f4

    .line 748
    :goto_14
    :pswitch_14
    return-object v0

    .line 628
    :pswitch_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    goto :goto_14

    .line 631
    :pswitch_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    goto :goto_14

    .line 634
    :pswitch_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    goto :goto_14

    .line 637
    :pswitch_39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    goto :goto_14

    .line 640
    :pswitch_42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    goto :goto_14

    .line 643
    :pswitch_4e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    goto :goto_14

    .line 646
    :pswitch_57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    goto :goto_14

    .line 649
    :pswitch_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 650
    goto :goto_14

    .line 652
    :pswitch_6f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    goto :goto_14

    .line 655
    :pswitch_7b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    goto :goto_14

    .line 658
    :pswitch_87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    goto :goto_14

    .line 661
    :pswitch_90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    goto/16 :goto_14

    .line 664
    :pswitch_9d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    goto/16 :goto_14

    .line 667
    :pswitch_aa
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    goto/16 :goto_14

    .line 670
    :pswitch_b4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    goto/16 :goto_14

    .line 673
    :pswitch_c1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    goto/16 :goto_14

    .line 676
    :pswitch_ce
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    goto/16 :goto_14

    .line 679
    :pswitch_db
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    goto/16 :goto_14

    .line 682
    :pswitch_e5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    goto/16 :goto_14

    .line 685
    :pswitch_f2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    goto/16 :goto_14

    .line 688
    :pswitch_ff
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    goto/16 :goto_14

    .line 691
    :pswitch_10c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    goto/16 :goto_14

    .line 694
    :pswitch_119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    goto/16 :goto_14

    .line 697
    :pswitch_126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    goto/16 :goto_14

    .line 700
    :pswitch_133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    goto/16 :goto_14

    .line 703
    :pswitch_140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    goto/16 :goto_14

    .line 706
    :pswitch_14d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    goto/16 :goto_14

    .line 709
    :pswitch_15a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    goto/16 :goto_14

    .line 712
    :pswitch_167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    goto/16 :goto_14

    .line 715
    :pswitch_174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    goto/16 :goto_14

    .line 718
    :pswitch_181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    goto/16 :goto_14

    .line 721
    :pswitch_18e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    goto/16 :goto_14

    .line 724
    :pswitch_198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    goto/16 :goto_14

    .line 727
    :pswitch_1a5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    goto/16 :goto_14

    .line 730
    :pswitch_1af
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    goto/16 :goto_14

    .line 733
    :pswitch_1bc
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    goto/16 :goto_14

    .line 736
    :pswitch_1c6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    goto/16 :goto_14

    .line 739
    :pswitch_1d3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    goto/16 :goto_14

    .line 742
    :pswitch_1dd
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 743
    goto/16 :goto_14

    .line 745
    :pswitch_1e7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 626
    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_42
        :pswitch_4e
        :pswitch_57
        :pswitch_63
        :pswitch_14
        :pswitch_14
        :pswitch_6f
        :pswitch_7b
        :pswitch_87
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b4
        :pswitch_c1
        :pswitch_ce
        :pswitch_db
        :pswitch_e5
        :pswitch_f2
        :pswitch_ff
        :pswitch_10c
        :pswitch_119
        :pswitch_126
        :pswitch_14
        :pswitch_14
        :pswitch_133
        :pswitch_140
        :pswitch_14d
        :pswitch_15a
        :pswitch_167
        :pswitch_174
        :pswitch_181
        :pswitch_18e
        :pswitch_198
        :pswitch_1a5
        :pswitch_1af
        :pswitch_1bc
        :pswitch_1c6
        :pswitch_1d3
        :pswitch_1dd
        :pswitch_1e7
    .end packed-switch
.end method

.method public static getWindowDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 591
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 592
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 593
    .local v0, display:Landroid/view/Display;
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->IMEI:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public static isMigrated(Landroid/content/Context;)Z
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 214
    const-string v1, "SETTING"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "MIGRATED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isNeedAutoRefresh(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 556
    .local v2, now:J
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 557
    .local v0, lasttime:J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    const/4 v4, 0x1

    :goto_d
    return v4

    :cond_e
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public static isWifiConnecting(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    :try_start_2
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 566
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_d

    .line 587
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    :cond_c
    :goto_c
    return v5

    .line 569
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 570
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_c

    .line 572
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 573
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 575
    .local v4, st:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_c

    .line 579
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_2c

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_2c

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2e

    if-ne v4, v7, :cond_c

    :cond_2c
    move v5, v6

    goto :goto_c

    .line 582
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #st:Landroid/net/NetworkInfo$State;
    :catch_2e
    move-exception v2

    .line 584
    .local v2, e:Ljava/lang/Exception;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static loadSettingPreferences(Landroid/content/Context;)I
    .registers 5
    .parameter "ctx"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, mode:I
    const-string v2, "SETTING"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 470
    .local v1, mySharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "AutoRefresh"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static saveSettingPreferences(Landroid/content/Context;I)V
    .registers 6
    .parameter "ctx"
    .parameter "nAutoRefreshPreferences"

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, mode:I
    const-string v3, "SETTING"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 457
    .local v2, mySharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "AutoRefresh"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    return-void
.end method

.method public static setAutorefreshSetting(Landroid/content/Context;I)Z
    .registers 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 184
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setDefaultCity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "city"
    .parameter "state"

    .prologue
    .line 610
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 611
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_cityname"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 614
    :goto_27
    return v1

    :cond_28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_cityname"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_27
.end method

.method public static setDefaultLocation(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter "context"
    .parameter "location"

    .prologue
    .line 598
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 599
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_city"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setFirst(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "first"

    .prologue
    .line 205
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public static setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "ctx"
    .parameter "location"

    .prologue
    .line 440
    const-string v2, "LOCATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_location"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    return-void
.end method

.method public static setLastTime(Landroid/content/Context;J)Z
    .registers 5
    .parameter "context"
    .parameter "lastTime"

    .prologue
    .line 170
    invoke-static {p0}, Lcom/sec/android/daemonapp/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 171
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static simEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 102
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 103
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static toast(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "stringResource"

    .prologue
    .line 475
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 476
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    .line 482
    :goto_b
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 483
    return-void

    .line 479
    :cond_11
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 480
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method public static toast(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "stringResource"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 499
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_18

    .line 500
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    .line 506
    :goto_b
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 508
    if-eqz p2, :cond_17

    .line 509
    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    :cond_17
    return-void

    .line 503
    :cond_18
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 504
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "stringResource"

    .prologue
    .line 487
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 488
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    .line 494
    :goto_b
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    return-void

    .line 491
    :cond_11
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 492
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "stringResource"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 514
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_18

    .line 515
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    .line 521
    :goto_b
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    if-eqz p2, :cond_17

    .line 524
    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 525
    :cond_17
    return-void

    .line 518
    :cond_18
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 519
    sget-object v0, Lcom/sec/android/daemonapp/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method
