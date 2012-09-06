.class public Landroid/support/place/utils/IPUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "aah.IPUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalIpAddress()Ljava/net/InetAddress;
    .registers 6

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    :try_start_1
    invoke-static {}, Landroid/support/place/utils/IPUtils;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 18
    :cond_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 19
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 29
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 30
    const-string v4, "wlan"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "eth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_29
    const/4 v2, 0x1

    .line 32
    :goto_2a
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 33
    :cond_2e
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 36
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_45

    instance-of v5, v0, Ljava/net/Inet6Address;

    if-nez v5, :cond_45

    move-object v1, v0

    .line 40
    :cond_45
    if-eqz v2, :cond_2e

    .line 41
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2e

    instance-of v5, v0, Ljava/net/Inet6Address;

    if-nez v5, :cond_2e

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_54} :catch_65

    move-result v5

    if-nez v5, :cond_2e

    .line 57
    :cond_57
    :goto_57
    return-object v0

    .line 30
    :cond_58
    const/4 v2, 0x0

    goto :goto_2a

    :cond_5a
    move-object v0, v1

    .line 54
    :goto_5b
    if-nez v0, :cond_57

    .line 55
    const-string v1, "aah.IPUtils"

    const-string v2, "Couldn\'t even find a loopback address.  We will crash soon."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 51
    :catch_65
    move-exception v0

    .line 52
    const-string v2, "aah.IPUtils"

    const-string v3, "Error finding a socket to use"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_5b
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 69
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    .line 70
    :catch_6
    move-exception v1

    .line 71
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_d

    .line 72
    throw v1

    .line 74
    :cond_d
    const-string v1, "aah.IPUtils"

    const-string v2, "NetworkInterface.getNetworkInterfaces threw NPE; retrying"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
