.class public Lcom/samsung/swift/security/NetworkImpl;
.super Lcom/samsung/swift/security/Network;
.source "NetworkImpl.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const-class v0, Lcom/samsung/swift/security/NetworkImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/swift/security/Network;-><init>()V

    .line 124
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 125
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/security/NetworkImpl;->peer:J

    .line 126
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/swift/security/Network;-><init>()V

    .line 119
    iput-wide p1, p0, Lcom/samsung/swift/security/NetworkImpl;->peer:J

    .line 120
    return-void
.end method

.method private static native create()J
.end method

.method private native destroy(J)V
.end method

.method private static declared-synchronized findServerNetwork()Lcom/samsung/swift/security/NetworkImpl;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 297
    const-class v6, Lcom/samsung/swift/security/NetworkImpl;

    monitor-enter v6

    :try_start_4
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v7, "java findServerNetwork()"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_80

    .line 301
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 304
    .local v1, ni:Ljava/net/NetworkInterface;
    :try_start_18
    invoke-static {v4}, Lcom/samsung/swift/security/NetworkImpl;->hotspotActive(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 306
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v7, "findServerNetwork: hotspot active"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->hotspotIp()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/swift/security/NetworkImpl;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 319
    :cond_31
    :goto_31
    if-nez v1, :cond_39

    .line 321
    const-string v5, "lo"

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_80
    .catch Ljava/net/SocketException; {:try_start_18 .. :try_end_38} :catch_62

    move-result-object v1

    .line 330
    :cond_39
    if-nez v1, :cond_83

    .line 332
    :try_start_3b
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v7, "NetworkInterface.getByInetAddress failed, cannot find server network"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_80

    .line 339
    :goto_42
    monitor-exit v6

    return-object v2

    .line 309
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 311
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v7, "findServerNetwork: wifi active"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->getActiveWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 315
    .local v3, wi:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/swift/security/NetworkImpl;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_80
    .catch Ljava/net/SocketException; {:try_start_44 .. :try_end_60} :catch_62

    move-result-object v1

    goto :goto_31

    .line 324
    .end local v3           #wi:Landroid/net/wifi/WifiInfo;
    :catch_62
    move-exception v0

    .line 326
    .local v0, e:Ljava/net/SocketException;
    :try_start_63
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SocketException trying to call getByInetAddress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_80

    goto :goto_42

    .line 297
    .end local v0           #e:Ljava/net/SocketException;
    :catchall_80
    move-exception v5

    monitor-exit v6

    throw v5

    .line 336
    :cond_83
    :try_start_83
    new-instance v2, Lcom/samsung/swift/security/NetworkImpl;

    invoke-direct {v2}, Lcom/samsung/swift/security/NetworkImpl;-><init>()V

    .line 337
    .local v2, serverNetwork:Lcom/samsung/swift/security/NetworkImpl;
    invoke-static {v2, v1}, Lcom/samsung/swift/security/NetworkImpl;->populateNetwork(Lcom/samsung/swift/security/Network;Ljava/net/NetworkInterface;)I

    .line 338
    invoke-static {v2, v4}, Lcom/samsung/swift/security/NetworkImpl;->populateNetworkWifiInfo(Lcom/samsung/swift/security/Network;Landroid/net/wifi/WifiManager;)I
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_80

    goto :goto_42
.end method

.method private static getActiveWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 544
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 545
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    return-object v1
.end method

.method private static getHotspotWifiConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .registers 6
    .parameter "wifiManager"

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWifiApConfiguration"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 552
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 555
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_16
    return-object v2

    .line 553
    :catch_17
    move-exception v0

    .line 554
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApConfiguration: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private static getInetAddressInt(Ljava/net/NetworkInterface;)I
    .registers 10
    .parameter "networkInterface"

    .prologue
    .line 515
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 516
    .local v5, inetAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v6, 0x0

    .line 517
    .local v6, out:I
    :cond_5
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 519
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 523
    .local v0, address:Ljava/net/InetAddress;
    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_5

    move-object v1, v0

    .line 525
    check-cast v1, Ljava/net/Inet4Address;

    .line 527
    .local v1, addressfour:Ljava/net/Inet4Address;
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .line 528
    .local v2, arr:[B
    array-length v4, v2

    .local v4, i:I
    :goto_1d
    if-lez v4, :cond_2b

    .line 530
    add-int/lit8 v8, v4, -0x1

    aget-byte v8, v2, v8

    and-int/lit16 v3, v8, 0xff

    .line 531
    .local v3, digit:I
    mul-int/lit16 v6, v6, 0x100

    .line 532
    add-int/2addr v6, v3

    .line 528
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .end local v3           #digit:I
    :cond_2b
    move v7, v6

    .line 539
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #addressfour:Ljava/net/Inet4Address;
    .end local v2           #arr:[B
    .end local v4           #i:I
    .end local v6           #out:I
    .local v7, out:I
    :goto_2c
    return v7

    .end local v7           #out:I
    .restart local v6       #out:I
    :cond_2d
    move v7, v6

    .end local v6           #out:I
    .restart local v7       #out:I
    goto :goto_2c
.end method

.method private static hotspotActive(Landroid/net/wifi/WifiManager;)Z
    .registers 7
    .parameter "wifiManager"

    .prologue
    const/4 v3, 0x0

    .line 562
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isWifiApEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 563
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v2

    .line 566
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1b
    return v2

    .line 564
    :catch_1c
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hotspotActive: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 566
    goto :goto_1b
.end method

.method private static hotspotIp()I
    .registers 1

    .prologue
    .line 572
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork()Lcom/samsung/swift/security/NetworkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/security/NetworkImpl;->getIpAddress()I

    move-result v0

    return v0
.end method

.method private static parseMacAddress([B)Ljava/lang/String;
    .registers 11
    .parameter "in"

    .prologue
    .line 500
    if-nez p0, :cond_8

    .line 501
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 510
    :cond_7
    return-object v4

    .line 503
    :cond_8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 504
    .local v4, out:Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_7

    aget-byte v1, v0, v2

    .line 506
    .local v1, b:B
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method private static populateNetwork(Lcom/samsung/swift/security/Network;Ljava/net/NetworkInterface;)I
    .registers 7
    .parameter "network"
    .parameter "networkInterface"

    .prologue
    .line 397
    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/samsung/swift/Swift;->isJDK6Compat()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 401
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setUp(Z)V

    .line 402
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 404
    .local v1, mac:[B
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setMacAddress([B)V

    .line 406
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setLoopback(Z)V

    .line 408
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setPointToPoint(Z)V

    .line 410
    .end local v1           #mac:[B
    :cond_2d
    invoke-static {p1}, Lcom/samsung/swift/security/NetworkImpl;->getInetAddressInt(Ljava/net/NetworkInterface;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/security/Network;->setIpAddress(I)V
    :try_end_34
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_34} :catch_36

    .line 417
    const/4 v2, 0x0

    :goto_35
    return v2

    .line 412
    :catch_36
    move-exception v0

    .line 414
    .local v0, e:Ljava/net/SocketException;
    sget-object v2, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshState: socketException getting NetworkInterface parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x5

    goto :goto_35
.end method

.method private static populateNetworkWifiInfo(Lcom/samsung/swift/security/Network;Landroid/net/wifi/WifiManager;)I
    .registers 10
    .parameter "network"
    .parameter "wifiManager"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 429
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 432
    invoke-static {p1}, Lcom/samsung/swift/security/NetworkImpl;->hotspotActive(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 434
    sget-object v3, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v4, "Hotspot active"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/samsung/swift/security/Network;->getIpAddress()I

    move-result v3

    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->hotspotIp()I

    move-result v4

    if-ne v3, v4, :cond_55

    .line 437
    sget-object v3, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v4, "populateNetworkWifiInfo: This is the Hotspot"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, v6}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 439
    invoke-virtual {p0, v6}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 440
    invoke-static {p1}, Lcom/samsung/swift/security/NetworkImpl;->getHotspotWifiConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 442
    if-nez v0, :cond_3b

    .line 444
    sget-object v3, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v4, "populateNetworkWifiInfo: getHotspotWifiConfiguration failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_3b
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 450
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_49

    .line 451
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setBssid(Ljava/lang/String;)V

    .line 453
    :cond_49
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v3, :cond_56

    .line 454
    invoke-virtual {p0, v6}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 458
    :goto_50
    const/high16 v3, 0x4130

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 495
    :cond_55
    :goto_55
    return v5

    .line 456
    :cond_56
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    goto :goto_50

    .line 461
    :cond_5a
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 463
    sget-object v3, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v4, "populateNetworkWifiInfo: wifi active"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->getActiveWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 467
    .local v2, wi:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p0}, Lcom/samsung/swift/security/Network;->getMacAddress()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/swift/security/NetworkImpl;->parseMacAddress([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 469
    sget-object v3, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v4, "populateNetworkWifiInfo: This is the wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0, v6}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 472
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_96

    .line 473
    invoke-virtual {p0, v6}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V

    .line 475
    :cond_96
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 478
    .local v1, rssi:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_af

    .line 479
    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    goto :goto_55

    .line 481
    :cond_af
    invoke-virtual {p0, v7}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    goto :goto_55

    .line 486
    .end local v1           #rssi:I
    .end local v2           #wi:Landroid/net/wifi/WifiInfo;
    :cond_b3
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 487
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 489
    invoke-virtual {p0, v7}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    goto :goto_55
.end method

.method public static declared-synchronized refresUpWiFiNetwork()V
    .registers 3

    .prologue
    .line 211
    const-class v2, Lcom/samsung/swift/security/NetworkImpl;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 213
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/NetworkImpl;

    .line 214
    .local v0, network:Lcom/samsung/swift/security/NetworkImpl;
    if-eqz v0, :cond_15

    .line 216
    sput-object v0, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_26

    .line 248
    :goto_13
    monitor-exit v2

    return-void

    .line 220
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 222
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .end local v0           #network:Lcom/samsung/swift/security/NetworkImpl;
    check-cast v0, Lcom/samsung/swift/security/NetworkImpl;

    .line 223
    .restart local v0       #network:Lcom/samsung/swift/security/NetworkImpl;
    if-eqz v0, :cond_29

    .line 225
    sput-object v0, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    .line 211
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    .line 229
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 231
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .end local v0           #network:Lcom/samsung/swift/security/NetworkImpl;
    check-cast v0, Lcom/samsung/swift/security/NetworkImpl;

    .line 232
    .restart local v0       #network:Lcom/samsung/swift/security/NetworkImpl;
    if-eqz v0, :cond_3a

    .line 234
    sput-object v0, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;

    goto :goto_13

    .line 238
    :cond_3a
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 240
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->getUpMobileApNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v0

    .end local v0           #network:Lcom/samsung/swift/security/NetworkImpl;
    check-cast v0, Lcom/samsung/swift/security/NetworkImpl;

    .line 241
    .restart local v0       #network:Lcom/samsung/swift/security/NetworkImpl;
    if-eqz v0, :cond_4b

    .line 243
    sput-object v0, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;

    goto :goto_13

    .line 247
    :cond_4b
    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getCurrentState()Lcom/samsung/swift/security/Network;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/security/NetworkImpl;

    sput-object v1, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_26

    goto :goto_13
.end method

.method private static declared-synchronized upWiFiNetwork()Lcom/samsung/swift/security/NetworkImpl;
    .registers 2

    .prologue
    .line 205
    const-class v1, Lcom/samsung/swift/security/NetworkImpl;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/samsung/swift/security/NetworkImpl;->refresUpWiFiNetwork()V

    .line 206
    sget-object v0, Lcom/samsung/swift/security/NetworkImpl;->upWiFiNetwork:Lcom/samsung/swift/security/NetworkImpl;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/samsung/swift/security/NetworkImpl;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/security/NetworkImpl;->destroy(J)V

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 141
    return-void
.end method

.method public native getBssid()Ljava/lang/String;
.end method

.method public native getExpirationTimestamp()J
.end method

.method public native getInterfaceId()Ljava/lang/String;
.end method

.method public native getIpAddress()I
.end method

.method public native getLastAccessTime()J
.end method

.method public native getMacAddress()[B
.end method

.method public native getSsid()Ljava/lang/String;
.end method

.method public native getWiFiSignalStrength()F
.end method

.method public native isBlackListed()Z
.end method

.method public native isDeletable()Z
.end method

.method public native isInsecureWifi()Z
.end method

.method public native isLoopback()Z
.end method

.method public native isPointToPoint()Z
.end method

.method public native isUp()Z
.end method

.method public native isWhiteListed()Z
.end method

.method public native isWiFi()Z
.end method

.method public native isWiFiAssociated()Z
.end method

.method public native loadIpAddressMacAddress()Z
.end method

.method public refreshState()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, networkInterface:Ljava/net/NetworkInterface;
    invoke-virtual {p0}, Lcom/samsung/swift/security/NetworkImpl;->getInterfaceId()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, interfaceId:Ljava/lang/String;
    if-eqz v2, :cond_10

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 352
    :cond_10
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v6, "refreshState: null or blank interfaceId; giving up"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x2

    .line 388
    :cond_18
    :goto_18
    return v1

    .line 357
    :cond_19
    :try_start_19
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_1c
    .catch Ljava/net/SocketException; {:try_start_19 .. :try_end_1c} :catch_2b

    move-result-object v3

    .line 366
    if-nez v3, :cond_4a

    .line 368
    sget-object v6, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    const-string v7, "Failed to find interface. Assume it\'s down"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/NetworkImpl;->setUp(Z)V

    move v1, v5

    .line 371
    goto :goto_18

    .line 359
    :catch_2b
    move-exception v0

    .line 361
    .local v0, e:Ljava/net/SocketException;
    sget-object v5, Lcom/samsung/swift/security/NetworkImpl;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshState: socketException calling NetworkInterface.getByName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x5

    goto :goto_18

    .line 377
    .end local v0           #e:Ljava/net/SocketException;
    :cond_4a
    invoke-static {p0, v3}, Lcom/samsung/swift/security/NetworkImpl;->populateNetwork(Lcom/samsung/swift/security/Network;Ljava/net/NetworkInterface;)I

    move-result v1

    .line 378
    .local v1, errno:I
    if-nez v1, :cond_18

    .line 383
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 384
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {p0, v4}, Lcom/samsung/swift/security/NetworkImpl;->populateNetworkWifiInfo(Lcom/samsung/swift/security/Network;Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 385
    if-nez v1, :cond_18

    move v1, v5

    .line 388
    goto :goto_18
.end method

.method public native setBlackListed(Z)V
.end method

.method public native setBssid(Ljava/lang/String;)V
.end method

.method public native setInfiniteExpiration()V
.end method

.method public native setInsecureWifi(Z)V
.end method

.method public native setInterfaceId(Ljava/lang/String;)V
.end method

.method public native setIpAddress(I)V
.end method

.method public native setLongExpiration()V
.end method

.method public native setLoopback(Z)V
.end method

.method public native setMacAddress([B)V
.end method

.method public native setPointToPoint(Z)V
.end method

.method public native setShortExpiration()V
.end method

.method public native setSsid(Ljava/lang/String;)V
.end method

.method public native setUp(Z)V
.end method

.method public native setWhiteListed(Z)V
.end method

.method public native setWiFi(Z)V
.end method

.method public native setWiFiAssociated(Z)V
.end method

.method public native setWiFiSignalStrength(F)V
.end method
