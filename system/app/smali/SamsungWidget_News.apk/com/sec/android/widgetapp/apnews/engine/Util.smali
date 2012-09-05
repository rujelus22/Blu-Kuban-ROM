.class public Lcom/sec/android/widgetapp/apnews/engine/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ENABLE_PERIODIC_AUTO_REFRESH:Z

.field public static final ENABLE_SETTING_CHECKBOX:Z

.field public static final ENABLE_WIDGET_DELAY_700:Z

.field public static final PREF_DEF_VALUE_FOR_USCC:Z

.field public static final SEARCH_TYPE:Z

.field public static final USE_FAHRENHEIT:Z

.field static isStockNewAdd:Z

.field static isWeatherNewAdd:Z

.field private static locationListener:Landroid/location/LocationListener;

.field public static updateFinanceState:Z

.field public static updateNewsState:Z

.field public static updateWeatherState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 617
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateWeatherState:Z

    .line 618
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateFinanceState:Z

    .line 619
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsState:Z

    .line 643
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->isWeatherNewAdd:Z

    .line 652
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->isStockNewAdd:Z

    .line 815
    const-string v0, "verizon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "sprint"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "uscc"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "cs"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_34
    move v0, v2

    :goto_35
    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->SEARCH_TYPE:Z

    .line 816
    const-string v0, "verizon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "sprint"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "uscc"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "cs"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    :cond_5f
    move v0, v2

    :goto_60
    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->USE_FAHRENHEIT:Z

    .line 818
    const-string v0, "verizon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->ENABLE_SETTING_CHECKBOX:Z

    .line 819
    const-string v0, "verizon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "sprint"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "uscc"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "cs"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    :cond_94
    move v0, v2

    :goto_95
    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->ENABLE_PERIODIC_AUTO_REFRESH:Z

    .line 821
    const-string v0, "verizon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "uscc"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "cs"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    :cond_b5
    move v1, v2

    :cond_b6
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->ENABLE_WIDGET_DELAY_700:Z

    .line 822
    const-string v0, "cs"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->PREF_DEF_VALUE_FOR_USCC:Z

    .line 1353
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Util$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/apnews/engine/Util$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/Util;->locationListener:Landroid/location/LocationListener;

    return-void

    :cond_ca
    move v0, v1

    .line 815
    goto/16 :goto_35

    :cond_cd
    move v0, v1

    .line 816
    goto :goto_60

    :cond_cf
    move v0, v1

    .line 819
    goto :goto_95
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check3GSim(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 542
    .local v0, isActiveNetwork:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 545
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 546
    const/4 v0, 0x1

    .line 552
    :goto_11
    return v0

    .line 548
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 498
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 499
    .local v0, connectivityMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 500
    .local v2, networkinfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_18

    .line 502
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 503
    const/4 v1, 0x1

    .line 512
    .local v1, isActiveNetwork:Z
    :goto_15
    return v1

    .line 506
    .end local v1           #isActiveNetwork:Z
    :cond_16
    const/4 v1, 0x0

    .restart local v1       #isActiveNetwork:Z
    goto :goto_15

    .line 510
    .end local v1           #isActiveNetwork:Z
    :cond_18
    const/4 v1, 0x0

    .restart local v1       #isActiveNetwork:Z
    goto :goto_15
.end method

.method public static checkNetworkConnection(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 1458
    const/4 v1, -0x1

    .line 1460
    .local v1, currentState:I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1461
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1463
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_16

    .line 1466
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1467
    const/4 v1, 0x0

    .line 1476
    :cond_16
    return v1
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "when"

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 187
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "when"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/sec/android/widgetapp/apnews/engine/Util;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 213
    :cond_19
    const-string v1, "MM/dd"

    .line 220
    :cond_1b
    :goto_1b
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 215
    :cond_2b
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 217
    const-string v1, "dd/MM"

    goto :goto_1b
.end method

.method public static formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "when"

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 200
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"

    .prologue
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 80
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 81
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 82
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 84
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 85
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    array-length v7, v2

    if-ge v3, v7, :cond_3b

    .line 86
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_1e

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1e
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_27

    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_27
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_30

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_30
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_38

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 96
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getDeviceDensity()I
    .registers 1

    .prologue
    .line 1440
    const/16 v0, 0xf0

    .line 1443
    .local v0, density:I
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 662
    const/4 v2, 0x0

    .line 665
    .local v2, ret:Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_14

    .line 667
    .local v1, orientation:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    .line 676
    .end local v1           #orientation:I
    :cond_e
    :goto_e
    return v2

    .line 669
    .restart local v1       #orientation:I
    :cond_f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    .line 670
    const/4 v2, 0x1

    goto :goto_e

    .line 672
    .end local v1           #orientation:I
    :catch_14
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public static isNormalXHdpi(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 1495
    const/4 v0, 0x0

    .line 1497
    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 1499
    .local v1, size:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_1f

    .line 1500
    const/4 v0, 0x1

    .line 1503
    :cond_1f
    return v0
.end method

.method public static isQ1Metrics(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 1481
    const/4 v0, 0x0

    .line 1483
    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 1486
    .local v1, size:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_1f

    .line 1487
    const/4 v0, 0x1

    .line 1490
    :cond_1f
    return v0
.end method

.method public static isWifiConnecting(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f07

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_f

    .line 593
    :cond_e
    :goto_e
    return v5

    .line 570
    :cond_f
    :try_start_f
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 572
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_e

    .line 575
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 576
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_e

    .line 578
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 579
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 581
    .local v4, st:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_e

    .line 585
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_38

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_38

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_3a

    if-ne v4, v7, :cond_e

    :cond_38
    move v5, v6

    goto :goto_e

    .line 588
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #st:Landroid/net/NetworkInfo$State;
    :catch_3a
    move-exception v2

    .line 590
    .local v2, e:Ljava/lang/Exception;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Util.isWifiConnecting() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static setNextAutoRefreshTime(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const-wide/32 v12, 0xa4cb80

    const-wide/32 v10, 0x36ee80

    const-wide/32 v8, 0x1b7740

    const-wide/32 v6, 0xea60

    .line 1317
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    .line 1318
    .local v2, preferences:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    const-string v4, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 1319
    .local v3, refreshType:I
    const-string v4, "AUTO_REFRESH_TIME"

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 1322
    .local v0, nextRefreshTime:J
    :cond_1d
    packed-switch v3, :pswitch_data_52

    .line 1348
    :cond_20
    :goto_20
    :pswitch_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1d

    .line 1350
    const-string v4, "AUTO_REFRESH_TIME"

    invoke-virtual {v2, v4, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setLongValue(Ljava/lang/String;J)V

    .line 1351
    return-void

    .line 1325
    :pswitch_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v8

    sub-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_20

    .line 1329
    add-long/2addr v0, v8

    .line 1330
    goto :goto_20

    .line 1333
    :pswitch_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v10

    sub-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_20

    .line 1337
    add-long/2addr v0, v10

    .line 1338
    goto :goto_20

    .line 1341
    :pswitch_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v12

    sub-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_20

    .line 1345
    add-long/2addr v0, v12

    goto :goto_20

    .line 1322
    :pswitch_data_52
    .packed-switch 0x3
        :pswitch_2e
        :pswitch_3a
        :pswitch_20
        :pswitch_46
    .end packed-switch
.end method

.method public static setStockNewAdd(Z)V
    .registers 1
    .parameter "update"

    .prologue
    .line 654
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/engine/Util;->isStockNewAdd:Z

    .line 655
    return-void
.end method

.method public static setWeatherNewAdd(Z)V
    .registers 1
    .parameter "update"

    .prologue
    .line 645
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/engine/Util;->isWeatherNewAdd:Z

    .line 646
    return-void
.end method

.method public static updateFinanceRefresh(Z)V
    .registers 1
    .parameter "nowRefresh"

    .prologue
    .line 630
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateFinanceState:Z

    .line 631
    return-void
.end method

.method public static updateNewsRefresh(Z)V
    .registers 1
    .parameter "nowRefresh"

    .prologue
    .line 626
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsState:Z

    .line 627
    return-void
.end method

.method public static updateWeatherRefresh(Z)V
    .registers 1
    .parameter "nowRefresh"

    .prologue
    .line 622
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateWeatherState:Z

    .line 623
    return-void
.end method
