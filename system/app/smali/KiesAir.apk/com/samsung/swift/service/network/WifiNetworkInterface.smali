.class public Lcom/samsung/swift/service/network/WifiNetworkInterface;
.super Lcom/samsung/swift/service/network/NetworkInterface;
.source "WifiNetworkInterface.java"


# static fields
.field public static final INTERFACENAME:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 102
    const-class v0, Lcom/samsung/swift/service/network/WifiNetworkInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    .line 103
    const-string v0, "wifi.interface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/swift/util/AndroidSystemProperties;->getNativeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/WifiNetworkInterface;->INTERFACENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/samsung/swift/service/network/WifiNetworkInterface;->INTERFACENAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/network/NetworkInterface;-><init>(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static getCurrentState()Lcom/samsung/swift/security/Network;
    .registers 12

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 141
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "wifi"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 142
    .local v7, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 143
    .local v6, winfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 148
    .local v0, activeId:I
    if-ne v0, v11, :cond_1a

    move-object v3, v9

    .line 220
    :goto_19
    return-object v3

    .line 153
    :cond_1a
    :try_start_1a
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, configuredNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v0, :cond_2c

    :cond_2a
    move-object v3, v9

    .line 157
    goto :goto_19

    .line 159
    :cond_2c
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_2f} :catch_8d

    move-result-object v3

    .line 162
    .local v3, network:Lcom/samsung/swift/security/Network;
    :try_start_30
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/swift/security/Network;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-static {v8}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 163
    .local v4, ni:Ljava/net/NetworkInterface;
    if-eqz v4, :cond_97

    .line 167
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/net/SocketException; {:try_start_30 .. :try_end_45} :catch_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_45} :catch_8d

    .line 183
    :try_start_45
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_c1

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 192
    :goto_53
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setBssid(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 195
    .local v5, rssi:I
    if-eq v5, v11, :cond_c6

    .line 197
    const/16 v8, 0xb

    invoke-static {v5, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 203
    :goto_71
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setIpAddress(I)V

    .line 204
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 205
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v10, :cond_cb

    .line 207
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 208
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setUp(Z)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_8c} :catch_8d

    goto :goto_19

    .line 217
    .end local v1           #configuredNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #network:Lcom/samsung/swift/security/Network;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    .end local v5           #rssi:I
    :catch_8d
    move-exception v2

    .line 219
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v10, "IllegalArgumentException returned null"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v9

    .line 220
    goto :goto_19

    .line 171
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #configuredNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #network:Lcom/samsung/swift/security/Network;
    .restart local v4       #ni:Ljava/net/NetworkInterface;
    :cond_97
    :try_start_97
    sget-object v8, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v10, "getByInetAddress returned null"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/net/SocketException; {:try_start_97 .. :try_end_9e} :catch_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9e} :catch_8d

    move-object v3, v9

    .line 172
    goto/16 :goto_19

    .line 175
    .end local v4           #ni:Ljava/net/NetworkInterface;
    :catch_a1
    move-exception v2

    .line 177
    .local v2, e:Ljava/net/SocketException;
    :try_start_a2
    sget-object v8, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SocketException calling getByInetAddress(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v9

    .line 178
    goto/16 :goto_19

    .line 189
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v4       #ni:Ljava/net/NetworkInterface;
    :cond_c1
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    goto :goto_53

    .line 201
    .restart local v5       #rssi:I
    :cond_c6
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    goto :goto_71

    .line 212
    :cond_cb
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 213
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/samsung/swift/security/Network;->setUp(Z)V
    :try_end_d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_d3} :catch_8d

    goto/16 :goto_19
.end method

.method public static getWiFiDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInstalled()Z
    .registers 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public connect()Z
    .registers 5

    .prologue
    .line 112
    sget-object v2, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v3, "connect called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 114
    .local v1, wm:Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    return v2
.end method

.method public disconnect()Z
    .registers 4

    .prologue
    .line 123
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v2, "disconnect called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 125
    .local v0, wm:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getWiFiDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspot()Z
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isUpAndAssociated()Z
    .registers 5

    .prologue
    .line 238
    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getCurrentState()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 239
    .local v0, n:Lcom/samsung/swift/security/Network;
    if-eqz v0, :cond_72

    .line 241
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isUp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWiFi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isWiFi()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWiFiAssociated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isWiFiAssociated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_72
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isUp()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isWiFiAssociated()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 247
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v2, "isUpAndAssociated: true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    .line 251
    :goto_88
    return v1

    .line 250
    :cond_89
    sget-object v1, Lcom/samsung/swift/service/network/WifiNetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v2, "isUpAndAssociated: false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x0

    goto :goto_88
.end method

.method public needsAssociatedCheck()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
