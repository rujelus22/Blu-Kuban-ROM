.class public Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;
.super Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
.source "AndroidPhoneInfo.java"


# instance fields
.field deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static myModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC Paradise"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    const-string v0, "ventura"

    .line 56
    :goto_c
    return-object v0

    .line 54
    :cond_d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC Liberty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 55
    const-string v0, "intruder"

    goto :goto_c

    .line 56
    :cond_1a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_c
.end method


# virtual methods
.method public getCarrierCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 62
    const-string v1, "CARRIER_COUNTRY"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v0

    .line 79
    :goto_e
    return-object v1

    .line 68
    :cond_f
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->getManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    .line 71
    :cond_1f
    invoke-static {}, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;->getMCC()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 73
    const/4 v0, 0x0

    .line 76
    :cond_2c
    if-nez v0, :cond_30

    .line 77
    const-string v0, ""

    .line 79
    :cond_30
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method getCtx()Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->getManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkISO3CountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->getCarrierCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/deviceinfo/CountryUtils;->ISO2ToISO3CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 97
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->deviceId:Ljava/lang/String;

    .line 99
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->getCtx()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    invoke-static {}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->myModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, ""

    return-object v0
.end method

.method public getPhoneNumberHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, ""

    return-object v0
.end method

.method public getShortOSVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorID()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->getCtx()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;
    .registers 13
    .parameter "andTelephonyIdle"

    .prologue
    .line 160
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    .line 161
    .local v2, context:Landroid/content/Context;
    if-eqz p1, :cond_17

    .line 162
    const-string v9, "phone"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 163
    .local v5, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-eqz v9, :cond_17

    .line 164
    sget-object v9, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->FAILURE_TELEPHONY:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    .line 183
    .end local v5           #mgr:Landroid/telephony/TelephonyManager;
    :goto_16
    return-object v9

    .line 168
    :cond_17
    const-string v9, "connectivity"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 169
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    .line 170
    .local v7, ni:[Landroid/net/NetworkInfo;
    const/4 v8, 0x0

    .line 171
    .local v8, success:Z
    move-object v0, v7

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_27
    if-ge v3, v4, :cond_56

    aget-object v6, v0, v3

    .line 172
    .local v6, n:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MOBILE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIMAX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 173
    :cond_4f
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 174
    const/4 v8, 0x1

    .line 179
    .end local v6           #n:Landroid/net/NetworkInfo;
    :cond_56
    if-nez v8, :cond_5e

    .line 180
    sget-object v9, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->FAILURE_NETWORK:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    goto :goto_16

    .line 171
    .restart local v6       #n:Landroid/net/NetworkInfo;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 183
    .end local v6           #n:Landroid/net/NetworkInfo;
    :cond_5e
    sget-object v9, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->SUCCESS:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    goto :goto_16
.end method

.method public isSimulator()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchDevice()Z
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method
