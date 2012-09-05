.class public Lcom/samsung/net/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# static fields
.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 48
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 49
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .registers 8
    .parameter "n"

    .prologue
    .line 128
    invoke-static {}, Lcom/samsung/net/HostInterface;->hasAssignedInterface()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 129
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 155
    :goto_a
    return-object v2

    .line 131
    :cond_b
    const/4 v3, 0x0

    .line 133
    .local v3, hostAddrCnt:I
    :try_start_c
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_44

    move-result-object v5

    .line 134
    .local v5, nis:Ljava/util/Enumeration;
    if-nez v5, :cond_25

    .line 135
    const-string v2, ""

    goto :goto_a

    .line 137
    :cond_15
    :try_start_15
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 138
    .local v4, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 139
    .local v1, addrs:Ljava/util/Enumeration;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 136
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    :cond_25
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_44

    move-result v6

    if-nez v6, :cond_15

    .line 155
    .end local v5           #nis:Ljava/util/Enumeration;
    :goto_2b
    const-string v2, ""

    goto :goto_a

    .line 140
    .restart local v1       #addrs:Ljava/util/Enumeration;
    .restart local v4       #ni:Ljava/net/NetworkInterface;
    .restart local v5       #nis:Ljava/util/Enumeration;
    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 141
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/samsung/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 143
    if-ge v3, p0, :cond_3f

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 145
    goto :goto_1f

    .line 147
    :cond_3f
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_44

    move-result-object v2

    .line 150
    .local v2, host:Ljava/lang/String;
    goto :goto_a

    .line 154
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    .end local v5           #nis:Ljava/util/Enumeration;
    :catch_44
    move-exception v6

    goto :goto_2b
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "uri"

    .prologue
    .line 266
    move-object v0, p0

    .line 267
    .local v0, hostAddr:Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    return-object v1
.end method

.method public static final getInterface()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 68
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    goto :goto_11
.end method

.method public static final getNHostAddresses()I
    .registers 6

    .prologue
    .line 103
    invoke-static {}, Lcom/samsung/net/HostInterface;->hasAssignedInterface()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 104
    const/4 v2, 0x1

    .line 123
    :goto_7
    return v2

    .line 106
    :cond_8
    const/4 v2, 0x0

    .line 108
    .local v2, nHostAddrs:I
    :try_start_9
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 109
    .local v4, nis:Ljava/util/Enumeration;
    if-nez v4, :cond_21

    .line 110
    const/4 v2, 0x0

    goto :goto_7

    .line 112
    :cond_11
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 113
    .local v3, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 114
    .local v1, addrs:Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_28

    .line 111
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v3           #ni:Ljava/net/NetworkInterface;
    :cond_21
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_7

    .line 115
    .restart local v1       #addrs:Ljava/util/Enumeration;
    .restart local v3       #ni:Ljava/net/NetworkInterface;
    :cond_28
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 116
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/samsung/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_37

    move-result v5

    if-eqz v5, :cond_1b

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 122
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v3           #ni:Ljava/net/NetworkInterface;
    .end local v4           #nis:Ljava/util/Enumeration;
    :catch_37
    move-exception v5

    goto :goto_7
.end method

.method private static final hasAssignedInterface()Z
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .registers 4
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 166
    :try_start_1
    invoke-static {p0}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 167
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz v2, :cond_e

    .line 168
    const/4 v1, 0x1

    .line 172
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_e
    :goto_e
    return v1

    .line 171
    :catch_f
    move-exception v2

    goto :goto_e
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .registers 3
    .parameter "addr"

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v1, :cond_c

    .line 87
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 98
    :cond_b
    :goto_b
    return v0

    .line 90
    :cond_c
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-eqz v1, :cond_14

    .line 91
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-nez v1, :cond_b

    .line 94
    :cond_14
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-eqz v1, :cond_1c

    .line 95
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-nez v1, :cond_b

    .line 98
    :cond_1c
    const/4 v0, 0x1

    goto :goto_b
.end method
