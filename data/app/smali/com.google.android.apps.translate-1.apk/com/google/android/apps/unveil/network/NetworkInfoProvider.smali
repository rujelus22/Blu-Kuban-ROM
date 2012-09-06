.class public Lcom/google/android/apps/unveil/network/NetworkInfoProvider;
.super Ljava/lang/Object;
.source "NetworkInfoProvider.java"


# static fields
.field private static final MAX_RSSI:I = 0x1f

.field public static final MAX_SIGNAL_STRENGTH:I = 0x64

.field public static final SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1

.field private static final WIFI_MANAGER_MAX_LEVELS:I = 0x2d

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final telephonyManager:Landroid/telephony/TelephonyManager;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 61
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    return-void
.end method

.method private getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3

    .prologue
    .line 158
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    .line 161
    .local v0, mobileNetworkInfo:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setCarrierName(Ljava/lang/String;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 195
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    .line 198
    :goto_1b
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v1

    return-object v1

    .line 165
    :pswitch_20
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->ONExRTT:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 168
    :pswitch_26
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->CDMA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 171
    :pswitch_2c
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EDGE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 174
    :pswitch_32
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_0:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 177
    :pswitch_38
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_A:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 180
    :pswitch_3e
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->GPRS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 183
    :pswitch_44
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSDPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 186
    :pswitch_4a
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 189
    :pswitch_50
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSUPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 192
    :pswitch_56
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UTMS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_1b

    .line 163
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2c
        :pswitch_56
        :pswitch_26
        :pswitch_32
        :pswitch_38
        :pswitch_20
        :pswitch_44
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 5

    .prologue
    .line 141
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    .line 144
    .local v0, networkInfo:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getNetworkType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getSignalStrength()I

    move-result v1

    .line 147
    .local v1, signalStrength:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setSignalStrength(I)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 151
    :cond_15
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->getType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    move-result-object v2

    sget-object v3, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    if-ne v2, v3, :cond_24

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 154
    :cond_24
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v2

    return-object v2
.end method

.method public getNetworkType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_e

    .line 203
    :cond_c
    const/4 v1, 0x0

    .line 220
    :goto_d
    return-object v1

    .line 206
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 208
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_19

    .line 209
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_d

    .line 212
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 220
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_d

    .line 214
    :pswitch_23
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_d

    .line 217
    :pswitch_26
    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_d

    .line 212
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method

.method public getSignalStrength()I
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v11, -0x1

    .line 75
    sget-object v12, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v13, "goldfish"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 79
    sget-object v12, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v13, "Running in emulator, getSignalStrength() returning SIGNAL_STRENGTH_UNAVAILABLE"

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v11

    .line 137
    :cond_16
    :goto_16
    return v7

    .line 83
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getNetworkType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    move-result-object v6

    .line 85
    .local v6, networkType:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    const/4 v7, -0x1

    .line 87
    .local v7, signalStrength:I
    if-eqz v6, :cond_16

    .line 91
    sget-object v12, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    if-ne v6, v12, :cond_5f

    .line 92
    iget-object v11, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 94
    .local v9, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_16

    .line 95
    const/4 v10, 0x0

    .line 98
    .local v10, wifiSignalStrength:I
    :try_start_2b
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    const/16 v12, 0x2e

    invoke-static {v11, v12}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_34
    .catch Ljava/lang/ArithmeticException; {:try_start_2b .. :try_end_34} :catch_3f

    move-result v10

    .line 109
    const v8, 0x400e38e4

    .line 110
    .local v8, strengthCorrection:F
    int-to-float v11, v10

    const v12, 0x400e38e4

    mul-float/2addr v11, v12

    float-to-int v7, v11

    goto :goto_16

    .line 100
    .end local v8           #strengthCorrection:F
    :catch_3f
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/ArithmeticException;
    sget-object v11, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to calculate wifi signal level "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 112
    .end local v0           #e:Ljava/lang/ArithmeticException;
    .end local v9           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v10           #wifiSignalStrength:I
    :cond_5f
    iget-object v12, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 114
    iget-object v12, p0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, neighboringCellInfos:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v5, :cond_16

    .line 118
    const/4 v2, -0x1

    .line 119
    .local v2, maxNeighborStrength:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_75
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 122
    .local v4, neighboringCellInfo:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v3

    .line 124
    .local v3, neighborRssi:I
    const/16 v12, 0x63

    if-eq v3, v12, :cond_75

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_75

    .line 129
    .end local v3           #neighborRssi:I
    .end local v4           #neighboringCellInfo:Landroid/telephony/NeighboringCellInfo;
    :cond_8e
    if-eq v2, v11, :cond_95

    .line 130
    mul-int/lit8 v11, v2, 0x64

    div-int/lit8 v7, v11, 0x1f

    goto :goto_16

    :cond_95
    move v7, v11

    .line 132
    goto :goto_16
.end method
