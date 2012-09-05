.class public Lcom/sec/android/widgetapp/weatherclock/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static isOnTap:Z

.field public static prefs:Landroid/content/SharedPreferences;

.field static sdf:Ljava/text/SimpleDateFormat;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Debug(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "WeatherClock"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public static convertTemp(IIF)I
    .registers 8
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "value"

    .prologue
    const-wide v3, 0x3ffccccccccccccdL

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, ct:F
    if-ne p0, p1, :cond_e

    .line 457
    move v0, p2

    .line 467
    :cond_9
    :goto_9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 460
    :cond_e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    .line 461
    const/high16 v1, 0x4200

    sub-float v1, p2, v1

    float-to-double v1, v1

    div-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9

    .line 463
    :cond_19
    if-nez p1, :cond_9

    .line 464
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

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, ct:F
    if-ne p0, p1, :cond_12

    .line 436
    move v0, p2

    .line 452
    :cond_9
    :goto_9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 439
    :cond_12
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    .line 440
    const/high16 v1, 0x4200

    sub-float v1, p2, v1

    float-to-double v1, v1

    div-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_9

    .line 442
    :cond_1d
    if-nez p1, :cond_9

    .line 443
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
    .line 215
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 216
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "refresh_interval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataFomat(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 113
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "DATA_FORMAT_CHANG"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDateStringShort2x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 306
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 308
    .local v9, timestamp:Ljava/lang/Long;
    if-eqz v9, :cond_6b

    .line 309
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 310
    .local v3, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 311
    .local v8, timeformat:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 312
    .local v6, now:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, date:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, current:Ljava/lang/String;
    const/4 v7, 0x0

    .line 316
    .local v7, result:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 318
    .local v5, index:I
    if-nez v5, :cond_4d

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    :goto_42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 335
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 345
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

    .line 322
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

    .line 324
    const/4 v10, 0x0

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 326
    :cond_60
    const/4 v10, -0x1

    if-ne v5, v10, :cond_65

    .line 328
    move-object v7, v2

    goto :goto_42

    .line 332
    :cond_65
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    .line 341
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

    .line 344
    .end local v9           #timestamp:Ljava/lang/Long;
    :catch_6e
    move-exception v4

    .line 345
    .local v4, ex:Ljava/lang/Exception;
    const-string v7, ""

    goto :goto_4c
.end method

.method public static getDateStringShort4x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 351
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 353
    .local v8, timestamp:Ljava/lang/Long;
    if-eqz v8, :cond_70

    .line 354
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 355
    .local v2, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 356
    .local v7, timeformat:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 357
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v9

    add-int/lit16 v9, v9, 0x76c

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, Year:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, date:Ljava/lang/String;
    const/4 v6, 0x0

    .line 360
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 362
    .local v4, index:I
    if-nez v4, :cond_52

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 378
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

    .line 386
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

    .line 366
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

    .line 368
    const/4 v9, 0x0

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 370
    :cond_65
    const/4 v9, -0x1

    if-ne v4, v9, :cond_6a

    .line 372
    move-object v6, v1

    goto :goto_36

    .line 376
    :cond_6a
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    .line 382
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

    .line 385
    .end local v8           #timestamp:Ljava/lang/Long;
    :catch_73
    move-exception v3

    .line 386
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, ""

    goto :goto_51
.end method

.method public static getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "timestring"

    .prologue
    .line 392
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 393
    .local v4, timestamp:J
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 394
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 397
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 399
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

    .line 402
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    .end local v4           #timestamp:J
    :goto_34
    return-object v6

    .line 401
    :catch_35
    move-exception v2

    .line 402
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_34
.end method

.method public static getDefaultDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "ctx"

    .prologue
    .line 408
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 409
    .local v2, order:[C
    const-string v0, "yyyy-MM-dd"

    .line 410
    .local v0, format:Ljava/lang/String;
    if-eqz v2, :cond_36

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_e
    array-length v4, v2

    if-ge v1, v4, :cond_2b

    .line 413
    aget-char v4, v2, v1

    sparse-switch v4, :sswitch_data_38

    .line 412
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 415
    :sswitch_19
    const-string v4, "yyyy-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 418
    :sswitch_1f
    const-string v4, "MM-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 421
    :sswitch_25
    const-string v4, "dd-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 427
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    .end local v1           #index:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_36
    return-object v0

    .line 413
    nop

    :sswitch_data_38
    .sparse-switch
        0x4d -> :sswitch_1f
        0x64 -> :sswitch_25
        0x79 -> :sswitch_19
    .end sparse-switch
.end method

.method public static getEnterOnTap()Z
    .registers 1

    .prologue
    .line 823
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isOnTap:Z

    return v0
.end method

.method private static getInterval(I)J
    .registers 3
    .parameter "refreshsetting"

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_1a

    .line 137
    const-wide/16 v0, -0x1

    :goto_5
    return-wide v0

    .line 127
    :pswitch_6
    const-wide/32 v0, 0x36ee80

    goto :goto_5

    .line 129
    :pswitch_a
    const-wide/32 v0, 0xa4cb80

    goto :goto_5

    .line 131
    :pswitch_e
    const-wide/32 v0, 0x1499700

    goto :goto_5

    .line 133
    :pswitch_12
    const-wide/32 v0, 0x2932e00

    goto :goto_5

    .line 135
    :pswitch_16
    const-wide/32 v0, 0x5265c00

    goto :goto_5

    .line 124
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public static getLastAutoRefreshUpdateTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 196
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 197
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_autorefresh_updatetime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 485
    const-string v1, "LOCATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
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
    .line 203
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 204
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

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

    .line 142
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yy/MM/dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/sec/android/widgetapp/weatherclock/common/Util;->sdf:Ljava/text/SimpleDateFormat;

    .line 144
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v1

    .line 145
    .local v1, lasttime:J
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v0

    .line 146
    .local v0, interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 147
    .local v5, now:J
    const-wide/16 v3, 0x0

    .line 149
    .local v3, next:J
    if-eqz p1, :cond_4a

    .line 151
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 152
    .local v7, tmp:Landroid/text/format/Time;
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 153
    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 154
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getInterval(I)J

    move-result-wide v10

    add-long v3, v8, v10

    .line 172
    .end local v7           #tmp:Landroid/text/format/Time;
    :cond_2f
    :goto_2f
    if-eqz p1, :cond_5e

    .line 174
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

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_49
    return-wide v3

    .line 158
    :cond_4a
    if-ne p2, v10, :cond_53

    .line 160
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long v3, v5, v8

    goto :goto_2f

    .line 163
    :cond_53
    move-wide v3, v1

    .line 165
    :goto_54
    cmp-long v8, v3, v5

    if-gtz v8, :cond_2f

    .line 166
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getInterval(I)J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_54

    .line 177
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

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 221
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
    .line 51
    const/4 v1, -0x1

    .line 54
    .local v1, resolution:I
    :try_start_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 56
    .local v2, sysDisplay:Landroid/view/Display;
    if-eqz v2, :cond_58

    .line 58
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sysDisplay.getHeight() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sysDisplay.getWidth() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0x5dc00

    if-ne v3, v4, :cond_59

    .line 63
    const v1, 0x5dc00

    .line 87
    .end local v2           #sysDisplay:Landroid/view/Display;
    :cond_58
    :goto_58
    return v1

    .line 65
    .restart local v2       #sysDisplay:Landroid/view/Display;
    :cond_59
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0xfa000

    if-ne v3, v4, :cond_6b

    .line 67
    const v1, 0xfa000

    goto :goto_58

    .line 70
    :cond_6b
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0xe1000

    if-ne v3, v4, :cond_7d

    .line 72
    const v1, 0xe1000

    goto :goto_58

    .line 75
    :cond_7d
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_84} :catch_8f

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0x25800

    if-ne v3, v4, :cond_58

    .line 77
    const v1, 0x25800

    goto :goto_58

    .line 82
    .end local v2           #sysDisplay:Landroid/view/Display;
    :catch_8f
    move-exception v0

    .line 84
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

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public static getTimestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 251
    .local v1, timeValue:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, timeStamp:Ljava/lang/String;
    return-object v0
.end method

.method public static getWeatherText(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "weatherIconNum"

    .prologue
    const v6, 0x7f090048

    const v5, 0x7f090044

    const v4, 0x7f090041

    const v3, 0x7f09003c

    const v2, 0x7f09003a

    .line 662
    const-string v0, ""

    .line 663
    .local v0, weatherText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_1f4

    .line 785
    :goto_14
    :pswitch_14
    return-object v0

    .line 665
    :pswitch_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    goto :goto_14

    .line 668
    :pswitch_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    goto :goto_14

    .line 671
    :pswitch_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    goto :goto_14

    .line 674
    :pswitch_39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    goto :goto_14

    .line 677
    :pswitch_42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    goto :goto_14

    .line 680
    :pswitch_4e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    goto :goto_14

    .line 683
    :pswitch_57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    goto :goto_14

    .line 686
    :pswitch_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    goto :goto_14

    .line 689
    :pswitch_6f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    goto :goto_14

    .line 692
    :pswitch_7b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    goto :goto_14

    .line 695
    :pswitch_87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    goto :goto_14

    .line 698
    :pswitch_90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    goto/16 :goto_14

    .line 701
    :pswitch_9d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    goto/16 :goto_14

    .line 704
    :pswitch_aa
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    goto/16 :goto_14

    .line 707
    :pswitch_b4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    goto/16 :goto_14

    .line 710
    :pswitch_c1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    goto/16 :goto_14

    .line 713
    :pswitch_ce
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    goto/16 :goto_14

    .line 716
    :pswitch_db
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    goto/16 :goto_14

    .line 719
    :pswitch_e5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    goto/16 :goto_14

    .line 722
    :pswitch_f2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    goto/16 :goto_14

    .line 725
    :pswitch_ff
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    goto/16 :goto_14

    .line 728
    :pswitch_10c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    goto/16 :goto_14

    .line 731
    :pswitch_119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    goto/16 :goto_14

    .line 734
    :pswitch_126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    goto/16 :goto_14

    .line 737
    :pswitch_133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    goto/16 :goto_14

    .line 740
    :pswitch_140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    goto/16 :goto_14

    .line 743
    :pswitch_14d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    goto/16 :goto_14

    .line 746
    :pswitch_15a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    goto/16 :goto_14

    .line 749
    :pswitch_167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    goto/16 :goto_14

    .line 752
    :pswitch_174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    goto/16 :goto_14

    .line 755
    :pswitch_181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    goto/16 :goto_14

    .line 758
    :pswitch_18e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    goto/16 :goto_14

    .line 761
    :pswitch_198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    goto/16 :goto_14

    .line 764
    :pswitch_1a5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    goto/16 :goto_14

    .line 767
    :pswitch_1af
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    goto/16 :goto_14

    .line 770
    :pswitch_1bc
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    goto/16 :goto_14

    .line 773
    :pswitch_1c6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    goto/16 :goto_14

    .line 776
    :pswitch_1d3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    goto/16 :goto_14

    .line 779
    :pswitch_1dd
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 780
    goto/16 :goto_14

    .line 782
    :pswitch_1e7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 663
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
    .line 628
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 629
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 630
    .local v0, display:Landroid/view/Display;
    return-object v0
.end method

.method public static isLocatingDialogProgress(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 830
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 831
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "LOCATING_DIALOG_RUNNING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedAutoRefresh(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 593
    .local v2, now:J
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 594
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

.method public static isNeedLocate(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 102
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "NEED_LOCATE_ONBOOT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWifiConnecting(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 601
    :try_start_2
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 603
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_d

    .line 624
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    :cond_c
    :goto_c
    return v5

    .line 606
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 607
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_c

    .line 609
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 610
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 612
    .local v4, st:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_c

    .line 616
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

    .line 619
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #st:Landroid/net/NetworkInfo$State;
    :catch_2e
    move-exception v2

    .line 621
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

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .registers 6
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 790
    if-nez p0, :cond_4

    .line 814
    :goto_3
    return-void

    .line 793
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    move-object v1, p0

    .line 796
    check-cast v1, Landroid/view/ViewGroup;

    .line 797
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 798
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v0, :cond_1f

    .line 799
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 798
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 802
    :cond_1f
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_26

    .line 803
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 808
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_26
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_2f

    .line 809
    check-cast p0, Landroid/widget/ImageView;

    .end local p0
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    :cond_2f
    const/4 p0, 0x0

    .line 814
    .restart local p0
    goto :goto_3
.end method

.method public static setAutorefreshSetting(Landroid/content/Context;I)Z
    .registers 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 210
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setDataFomat(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "isChange"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DATA_FORMAT_CHANG"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setDefaultCity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "city"
    .parameter "state"

    .prologue
    .line 647
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 648
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_cityname"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 651
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
    .line 635
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 636
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

.method public static setEnterOnTap(Z)V
    .registers 1
    .parameter "is"

    .prologue
    .line 820
    sput-boolean p0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->isOnTap:Z

    .line 821
    return-void
.end method

.method public static setLastAutoRefreshUpdateTime(Landroid/content/Context;J)Z
    .registers 5
    .parameter "context"
    .parameter "lastTime"

    .prologue
    .line 191
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 192
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_autorefresh_updatetime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "ctx"
    .parameter "location"

    .prologue
    .line 477
    const-string v2, "LOCATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 478
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 479
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_location"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    return-void
.end method

.method public static setLastTime(Landroid/content/Context;J)Z
    .registers 5
    .parameter "context"
    .parameter "lastTime"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    .line 184
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setLocatingDialogProgress(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "is"

    .prologue
    .line 836
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "LOCATING_DIALOG_RUNNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setNeedLocate(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "isNeed"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "NEED_LOCATE_ONBOOT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static simEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 92
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 94
    const/4 v1, 0x1

    .line 96
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
    .line 512
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 513
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    .line 519
    :goto_b
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    return-void

    .line 517
    :cond_11
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "stringResource"

    .prologue
    .line 524
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 525
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    .line 531
    :goto_b
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    return-void

    .line 529
    :cond_11
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

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

    .line 551
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_18

    .line 552
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    .line 558
    :goto_b
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 560
    if-eqz p2, :cond_17

    .line 561
    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    :cond_17
    return-void

    .line 556
    :cond_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method
