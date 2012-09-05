.class public Lcom/samsung/android/application/fileshare/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static getIpFromInt(I)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 145
    if-nez p0, :cond_9

    .line 147
    const-string v1, "[FT]-Stack"

    const-string v2, "getIPFromInt : I can\'t get the IP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddressByMgr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalServerIPAddressByMgr(Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .parameter "context"

    .prologue
    .line 25
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 26
    .local v2, connManager:Landroid/net/ConnectivityManager;
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 28
    .local v10, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 29
    .local v5, info:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_42

    .line 31
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 32
    .local v9, wi:Landroid/net/wifi/WifiInfo;
    if-nez v9, :cond_3d

    const/4 v1, 0x0

    .line 33
    .local v1, address:I
    :goto_1e
    if-eqz v1, :cond_42

    .line 35
    const-string v11, "[FT]-Stack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getLocalServer - INT FP:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v11

    .line 89
    .end local v1           #address:I
    .end local v9           #wi:Landroid/net/wifi/WifiInfo;
    :goto_3c
    return-object v11

    .line 32
    .restart local v9       #wi:Landroid/net/wifi/WifiInfo;
    :cond_3d
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_1e

    .line 40
    .end local v9           #wi:Landroid/net/wifi/WifiInfo;
    :cond_42
    const/4 v0, 0x0

    .line 59
    .local v0, addr:Ljava/net/InetAddress;
    :try_start_43
    const-string v11, "p2p-wlan0-0"

    invoke-static {v11}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 60
    .local v6, interf:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .line 61
    .local v7, ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_4d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_50
    .catch Ljava/net/SocketException; {:try_start_43 .. :try_end_50} :catch_b4

    move-result v11

    if-nez v11, :cond_7e

    .line 84
    .end local v6           #interf:Ljava/net/NetworkInterface;
    .end local v7           #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_53
    if-eqz v0, :cond_b9

    .line 86
    const-string v11, "[FT]-Stack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "FP on VM"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/application/fileshare/Defines;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3c

    .line 63
    .restart local v6       #interf:Ljava/net/NetworkInterface;
    .restart local v7       #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_7e
    :try_start_7e
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 65
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, ips_string:Ljava/lang/String;
    const-string v11, "/fe80"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4d

    .line 69
    const-string v11, "[FT]-Stack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "INT FP = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/application/fileshare/Defines;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_af
    .catch Ljava/net/SocketException; {:try_start_7e .. :try_end_af} :catch_b4

    move-result v11

    if-nez v11, :cond_4d

    .line 72
    move-object v0, v4

    .line 73
    goto :goto_53

    .line 79
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #interf:Ljava/net/NetworkInterface;
    .end local v7           #ips:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v8           #ips_string:Ljava/lang/String;
    :catch_b4
    move-exception v3

    .line 82
    .local v3, e:Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_53

    .line 89
    .end local v3           #e:Ljava/net/SocketException;
    :cond_b9
    const/4 v11, 0x0

    goto :goto_3c
.end method

.method private static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    .line 131
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 132
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 133
    .local v0, wi:Landroid/net/wifi/WifiInfo;
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checke maclocate : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, " 1/1 "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, mac:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getUUIDFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUUIDFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "keyworkd"

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uuid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method
