.class public Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;
.super Lcom/samsung/swift/service/network/NetworkInterface;
.source "MobileAp22NetworkInterface.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const-class v0, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 120
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/network/NetworkInterface;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static getMobileApDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 202
    .local v0, model:Ljava/lang/String;
    const-string v1, "I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "M110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "M220L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 204
    :cond_1a
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->mobileap2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_28
    return-object v1

    :cond_29
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$string;->mobileap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_28
.end method

.method private static getMobileApIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1f

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, com:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    .end local v0           #com:Landroid/content/ComponentName;
    :goto_19
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    return-object v1

    .line 134
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_19
.end method

.method public static getUpMobileApNetwork()Lcom/samsung/swift/security/Network;
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 214
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "wifi"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 218
    .local v8, wm:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 225
    .local v1, apState:I
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApState"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 226
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 229
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_36} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_36} :catch_c0

    move-result v7

    .line 237
    .local v7, wifiApStateEnabled:I
    if-eq v1, v7, :cond_61

    .line 239
    :try_start_39
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "WIFI_AP_STATE_ENABLED isn\'t"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 305
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v7           #wifiApStateEnabled:I
    :goto_41
    return-object v5

    .line 231
    :catch_42
    move-exception v2

    .line 233
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

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

    .line 234
    goto :goto_41

    .line 243
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v7       #wifiApStateEnabled:I
    :cond_61
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_64} :catch_c0

    move-result-object v5

    .line 247
    .local v5, network:Lcom/samsung/swift/security/Network;
    :try_start_65
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->hotspotIp()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/swift/security/Network;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v9}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 248
    .local v6, ni:Ljava/net/NetworkInterface;
    if-eqz v6, :cond_f0

    .line 250
    invoke-static {}, Lcom/samsung/swift/Swift;->isJDK6Compat()Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 252
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setUp(Z)V

    .line 259
    :goto_80
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/net/SocketException; {:try_start_65 .. :try_end_87} :catch_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_87} :catch_c0

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, apNetwork:Landroid/net/wifi/WifiConfiguration;
    :try_start_88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "getWifiApConfiguration"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 276
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9e} :catch_fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_9e} :catch_c0

    .line 285
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :try_start_9e
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_11a

    .line 287
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 294
    :goto_a6
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 295
    const/high16 v9, 0x4130

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 296
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 297
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 298
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->hotspotIp()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setIpAddress(I)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_bf} :catch_c0

    goto :goto_41

    .line 302
    .end local v0           #apNetwork:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #network:Lcom/samsung/swift/security/Network;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    .end local v7           #wifiApStateEnabled:I
    :catch_c0
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "IllegalArgumentException returned null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 305
    goto/16 :goto_41

    .line 257
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #network:Lcom/samsung/swift/security/Network;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    .restart local v7       #wifiApStateEnabled:I
    :cond_cb
    const/4 v9, 0x1

    :try_start_cc
    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setUp(Z)V
    :try_end_cf
    .catch Ljava/net/SocketException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cc .. :try_end_cf} :catch_c0

    goto :goto_80

    .line 267
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :catch_d0
    move-exception v2

    .line 269
    .local v2, e:Ljava/net/SocketException;
    :try_start_d1
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

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
    :try_end_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_ed} :catch_c0

    move-object v5, v10

    .line 270
    goto/16 :goto_41

    .line 263
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    :cond_f0
    :try_start_f0
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v11, "getByInetAddress returned null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/net/SocketException; {:try_start_f0 .. :try_end_f7} :catch_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f0 .. :try_end_f7} :catch_c0

    move-object v5, v10

    .line 264
    goto/16 :goto_41

    .line 278
    :catch_fa
    move-exception v2

    .line 280
    .local v2, e:Ljava/lang/Exception;
    :try_start_fb
    sget-object v9, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

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

    .line 281
    goto/16 :goto_41

    .line 291
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #apNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_11a
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V
    :try_end_11e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_11e} :catch_c0

    goto :goto_a6
.end method

.method private static hotspotIp()I
    .registers 2

    .prologue
    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 325
    .local v0, model:Ljava/lang/String;
    const-string v1, "ISW11SC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 328
    const v1, 0x101a8c0

    .line 333
    :goto_d
    return v1

    :cond_e
    const v1, 0x12ba8c0

    goto :goto_d
.end method

.method public static isInstalled()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_20

    .line 192
    sget-object v2, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v3, "Mobile AP is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v2, 0x1

    .line 196
    :goto_1f
    return v2

    .line 195
    :cond_20
    sget-object v3, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->LOGTAG:Ljava/lang/String;

    const-string v4, "Mobile AP is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method


# virtual methods
.method public connect()Z
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 154
    :try_start_1
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 155
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

    .line 156
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

    .line 161
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_3d
    return v3

    .line 157
    :catch_3e
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 161
    goto :goto_3d
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getMobileApDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspot()Z
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public isUp()Z
    .registers 3

    .prologue
    .line 175
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 177
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
    .line 311
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .line 312
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
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public postConnection()V
    .registers 5

    .prologue
    .line 167
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "press_back_return_webstudio"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 170
    .local v0, msg:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    return-void
.end method
