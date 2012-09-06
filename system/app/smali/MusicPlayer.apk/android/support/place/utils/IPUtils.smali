.class public Landroid/support/place/utils/IPUtils;
.super Ljava/lang/Object;
.source "IPUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalIpAddress()Ljava/net/InetAddress;
    .registers 10

    .prologue
    .line 15
    const/4 v6, 0x0

    .line 17
    .local v6, loopback:Ljava/net/InetAddress;
    :try_start_1
    invoke-static {}, Landroid/support/place/utils/IPUtils;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 18
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 19
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 29
    .local v5, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, name:Ljava/lang/String;
    const-string v8, "wlan"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    const-string v8, "eth"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    :cond_29
    const/4 v0, 0x1

    .line 32
    .local v0, desired:Z
    :goto_2a
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 33
    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 34
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 36
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-eqz v8, :cond_45

    instance-of v8, v4, Ljava/net/Inet6Address;

    if-nez v8, :cond_45

    .line 37
    move-object v6, v4

    .line 40
    :cond_45
    if-eqz v0, :cond_2e

    .line 41
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2e

    instance-of v8, v4, Ljava/net/Inet6Address;

    if-nez v8, :cond_2e

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_54} :catch_67

    move-result v8

    if-nez v8, :cond_2e

    .line 57
    .end local v0           #desired:Z
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #intf:Ljava/net/NetworkInterface;
    .end local v7           #name:Ljava/lang/String;
    :goto_57
    return-object v4

    .line 30
    .restart local v1       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v5       #intf:Ljava/net/NetworkInterface;
    .restart local v7       #name:Ljava/lang/String;
    :cond_58
    const/4 v0, 0x0

    goto :goto_2a

    .line 49
    .end local v5           #intf:Ljava/net/NetworkInterface;
    .end local v7           #name:Ljava/lang/String;
    :cond_5a
    if-nez v6, :cond_5c

    .line 54
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_5c
    :goto_5c
    if-nez v6, :cond_65

    .line 55
    const-string v8, "aah.IPUtils"

    const-string v9, "Couldn\'t even find a loopback address.  We will crash soon."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    move-object v4, v6

    .line 57
    goto :goto_57

    .line 51
    :catch_67
    move-exception v3

    .line 52
    .local v3, ex:Ljava/net/SocketException;
    const-string v8, "aah.IPUtils"

    const-string v9, "Error finding a socket to use"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x3

    .line 65
    .local v0, NETWORK_INTERFACE_RETRIES:I
    const/4 v2, 0x0

    .line 66
    .local v2, interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    const/4 v3, 0x0

    .line 69
    .local v3, retry:I
    :goto_3
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v4

    return-object v4

    .line 70
    :catch_8
    move-exception v1

    .line 71
    .local v1, ex:Ljava/lang/NullPointerException;
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_f

    .line 72
    throw v1

    .line 74
    :cond_f
    const-string v4, "aah.IPUtils"

    const-string v5, "NetworkInterface.getNetworkInterfaces threw NPE; retrying"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
