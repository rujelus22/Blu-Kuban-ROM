.class public Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;
.super Lcom/samsung/swift/service/network/NetworkInterface;
.source "SprintHotspotNetworkInterface.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final modelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    const-class v0, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    .line 121
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->modelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 125
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/network/NetworkInterface;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static getMobileApDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->mobileap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMobileApIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 132
    sget-object v1, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->modelName:Ljava/lang/String;

    const-string v2, "SPH-L710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_14
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    return-object v0

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14
.end method

.method public static getUpMobileApNetwork()Lcom/samsung/swift/security/Network;
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 216
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "wifi"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 220
    .local v8, wm:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 227
    .local v1, apState:I
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApState"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 228
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 230
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 231
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_36} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_36} :catch_d1

    move-result v7

    .line 239
    .local v7, wifiApStateEnabled:I
    if-eq v1, v7, :cond_72

    .line 241
    :try_start_39
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WIFI_AP_STATE_ENABLED isn\'t: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 307
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v7           #wifiApStateEnabled:I
    :goto_52
    return-object v5

    .line 233
    :catch_53
    move-exception v2

    .line 235
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception trying to determine if Mobile AP is enabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 236
    goto :goto_52

    .line 245
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v7       #wifiApStateEnabled:I
    :cond_72
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_75} :catch_d1

    move-result-object v5

    .line 249
    .local v5, network:Lcom/samsung/swift/security/Network;
    :try_start_76
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->hotspotIp()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/swift/security/Network;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v9}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 250
    .local v6, ni:Ljava/net/NetworkInterface;
    if-eqz v6, :cond_101

    .line 252
    invoke-static {}, Lcom/samsung/swift/Swift;->isJDK6Compat()Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 254
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setUp(Z)V

    .line 261
    :goto_91
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/net/SocketException; {:try_start_76 .. :try_end_98} :catch_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_98} :catch_d1

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, apNetwork:Landroid/net/wifi/WifiConfiguration;
    :try_start_99
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApConfiguration"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 278
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_af} :catch_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_af} :catch_d1

    .line 287
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :try_start_af
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_12b

    .line 289
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 296
    :goto_b7
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 297
    const/high16 v9, 0x4130

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 298
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 299
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 300
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->hotspotIp()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setIpAddress(I)V
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_d0} :catch_d1

    goto :goto_52

    .line 304
    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #network:Lcom/samsung/swift/security/Network;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    .end local v7           #wifiApStateEnabled:I
    :catch_d1
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "IllegalArgumentException returned null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 307
    goto/16 :goto_52

    .line 259
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #network:Lcom/samsung/swift/security/Network;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    .restart local v7       #wifiApStateEnabled:I
    :cond_dc
    const/4 v9, 0x1

    :try_start_dd
    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setUp(Z)V
    :try_end_e0
    .catch Ljava/net/SocketException; {:try_start_dd .. :try_end_e0} :catch_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dd .. :try_end_e0} :catch_d1

    goto :goto_91

    .line 269
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :catch_e1
    move-exception v2

    .line 271
    .local v2, e:Ljava/net/SocketException;
    :try_start_e2
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SocketException calling getByInetAddress(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_fe} :catch_d1

    move-object v5, v10

    .line 272
    goto/16 :goto_52

    .line 265
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    :cond_101
    :try_start_101
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "getByInetAddress returned null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/net/SocketException; {:try_start_101 .. :try_end_108} :catch_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_101 .. :try_end_108} :catch_d1

    move-object v5, v10

    .line 266
    goto/16 :goto_52

    .line 280
    :catch_10b
    move-exception v2

    .line 282
    .local v2, e:Ljava/lang/Exception;
    :try_start_10c
    sget-object v9, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception trying to get Mobile AP configuration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 283
    goto/16 :goto_52

    .line 293
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_12b
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V
    :try_end_12f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10c .. :try_end_12f} :catch_d1

    goto :goto_b7
.end method

.method private static hotspotIp()I
    .registers 9

    .prologue
    .line 325
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "wifiap_local_ip"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, ipString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 330
    .local v3, ip:I
    if-eqz v4, :cond_5b

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5b

    .line 332
    const-string v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_23
    if-ltz v2, :cond_73

    .line 335
    mul-int/lit16 v3, v3, 0x100

    .line 337
    :try_start_27
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2c} :catch_31

    move-result v6

    add-int/2addr v3, v6

    .line 333
    :goto_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 339
    :catch_31
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hotspotIp: Failed to parse as number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 346
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #i:I
    .end local v5           #parts:[Ljava/lang/String;
    :cond_5b
    sget-object v6, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse IP address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_73
    return v3
.end method

.method public static isInstalled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 192
    sget-object v2, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->modelName:Ljava/lang/String;

    const-string v3, "SPH-L710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 194
    sget-object v2, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v3, "Sprint Hotspot is installed - model SPH-L710"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .local v0, intent:Landroid/content/Intent;
    :goto_12
    return v1

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_13
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v0

    .line 199
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 201
    sget-object v2, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v3, "Sprint Hotspot is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 204
    :cond_2f
    sget-object v1, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v2, "Sprint Hotspot is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method public connect()Z
    .registers 3

    .prologue
    .line 149
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 158
    :try_start_1
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 159
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setWifiApEnabled"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3e

    move-result v3

    .line 165
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_3d
    return v3

    .line 161
    :catch_3e
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 165
    goto :goto_3d
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getMobileApDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspot()Z
    .registers 2

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public isUp()Z
    .registers 3

    .prologue
    .line 179
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 181
    .local v0, n:Lcom/samsung/swift/security/Network;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isUp()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUpAndAssociated()Z
    .registers 3

    .prologue
    .line 313
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 314
    .local v0, n:Lcom/samsung/swift/security/Network;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isUp()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isWiFiAssociated()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public needsAssociatedCheck()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public postConnection()V
    .registers 5

    .prologue
    .line 171
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "press_back_return_webstudio"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 174
    .local v0, msg:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method
