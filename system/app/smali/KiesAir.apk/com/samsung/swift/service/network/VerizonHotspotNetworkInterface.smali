.class public Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;
.super Lcom/samsung/swift/service/network/NetworkInterface;
.source "VerizonHotspotNetworkInterface.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final modelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const-class v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    .line 115
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->modelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 119
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/network/NetworkInterface;-><init>(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static getMobileApDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
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
    .registers 2

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method public static getUpMobileApNetwork()Lcom/samsung/swift/security/Network;
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 196
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "wifi"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 198
    .local v8, wm:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 205
    .local v1, apState:I
    :try_start_10
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApState"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 206
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 208
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 209
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_55

    move-result v7

    .line 217
    .local v7, wifiApStateEnabled:I
    if-eq v1, v7, :cond_74

    .line 219
    sget-object v9, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

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

    .line 272
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v7           #wifiApStateEnabled:I
    :goto_54
    return-object v5

    .line 211
    :catch_55
    move-exception v2

    .line 213
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

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

    .line 214
    goto :goto_54

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v7       #wifiApStateEnabled:I
    :cond_74
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;

    move-result-object v5

    .line 227
    .local v5, network:Lcom/samsung/swift/security/Network;
    :try_start_78
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->hotspotIp()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/swift/security/Network;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v9}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 228
    .local v6, ni:Ljava/net/NetworkInterface;
    if-eqz v6, :cond_ca

    .line 230
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setUp(Z)V

    .line 231
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/net/SocketException; {:try_start_78 .. :try_end_94} :catch_d3

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, apNetwork:Landroid/net/wifi/WifiConfiguration;
    :try_start_95
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApConfiguration"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 248
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_ab} :catch_f3

    .line 257
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_113

    .line 259
    invoke-virtual {v5, v13}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 266
    :goto_b2
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 267
    const/high16 v9, 0x4130

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 268
    invoke-virtual {v5, v14}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 269
    invoke-virtual {v5, v14}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 270
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->hotspotIp()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setIpAddress(I)V

    goto :goto_54

    .line 235
    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_ca
    :try_start_ca
    sget-object v9, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "getByInetAddress returned null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/net/SocketException; {:try_start_ca .. :try_end_d1} :catch_d3

    move-object v5, v10

    .line 236
    goto :goto_54

    .line 239
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :catch_d3
    move-exception v2

    .line 241
    .local v2, e:Ljava/net/SocketException;
    sget-object v9, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

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

    move-object v5, v10

    .line 242
    goto/16 :goto_54

    .line 250
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    :catch_f3
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

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

    .line 253
    goto/16 :goto_54

    .line 263
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_113
    invoke-virtual {v5, v14}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    goto :goto_b2
.end method

.method private static hotspotIp()I
    .registers 1

    .prologue
    .line 290
    const v0, 0x12ba8c0

    return v0
.end method

.method public static isInstalled()Z
    .registers 2

    .prologue
    .line 180
    sget-object v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->modelName:Ljava/lang/String;

    const-string v1, "SCH-I535"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    sget-object v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v1, "Verizon Hotspot is installed - model SCH-I535"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_12
    return v0

    .line 185
    :cond_13
    sget-object v0, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v1, "Verizon Hotspot is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public connect()Z
    .registers 3

    .prologue
    .line 137
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 146
    :try_start_1
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 147
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

    .line 148
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

    .line 153
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_3d
    return v3

    .line 149
    :catch_3e
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 153
    goto :goto_3d
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getMobileApDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspot()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public isUp()Z
    .registers 3

    .prologue
    .line 167
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 169
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
    .line 277
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 278
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
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public postConnection()V
    .registers 5

    .prologue
    .line 159
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "press_back_return_webstudio"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 162
    .local v0, msg:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    return-void
.end method
