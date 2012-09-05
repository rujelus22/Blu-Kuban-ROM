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

    .line 49
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 50
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 51
    sput-boolean v0, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "ipstr"

    .prologue
    .line 201
    if-eqz p0, :cond_9

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_b

    :cond_9
    move-object v2, p0

    .line 250
    :goto_a
    return-object v2

    .line 204
    :cond_b
    const-string v6, "fe80"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fe80:**:**:**:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x9

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 210
    :cond_2d
    const/4 v0, 0x1

    .line 212
    .local v0, check:Z
    const-string v2, ""

    .line 213
    .local v2, result:Ljava/lang/String;
    :cond_30
    :goto_30
    if-nez v0, :cond_43

    .line 233
    :goto_32
    const-string v6, "16801920"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 235
    const-string v6, "16801920"

    const-string v7, "_true"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 215
    :cond_43
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 216
    .local v5, tmpPos:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_64

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    goto :goto_32

    .line 221
    :cond_64
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, tmp:Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 224
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_30

    .line 231
    const/4 v0, 0x0

    goto :goto_30

    .line 239
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #tmp:Ljava/lang/String;
    .end local v5           #tmpPos:I
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_9e

    .line 240
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 241
    :cond_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b0} :catch_b3

    move-result-object v2

    goto/16 :goto_a

    .line 246
    .end local v0           #check:Z
    .end local v2           #result:Ljava/lang/String;
    :catch_b3
    move-exception v1

    .line 248
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Stack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "change IP Exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, ""

    goto/16 :goto_a
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .registers 8
    .parameter "n"

    .prologue
    .line 150
    invoke-static {}, Lcom/samsung/net/HostInterface;->hasAssignedInterface()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 151
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_a
    return-object v2

    .line 153
    :cond_b
    const/4 v3, 0x0

    .line 174
    .local v3, hostAddrCnt:I
    :try_start_c
    const-string v5, "p2p-wlan0-0"

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 175
    .local v4, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 176
    .local v1, addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_3e

    move-result v5

    if-nez v5, :cond_1f

    .line 194
    .end local v1           #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #ni:Ljava/net/NetworkInterface;
    :goto_1c
    const-string v2, ""

    goto :goto_a

    .line 177
    .restart local v1       #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v4       #ni:Ljava/net/NetworkInterface;
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 178
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/samsung/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 180
    if-ge v3, p0, :cond_30

    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 182
    goto :goto_16

    .line 185
    :cond_30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, host:Ljava/lang/String;
    const-string v5, "[FT]-Stack"

    invoke-static {v2}, Lcom/samsung/net/HostInterface;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_a

    .line 193
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    :catch_3e
    move-exception v5

    goto :goto_1c
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "uri"

    .prologue
    .line 394
    move-object v0, p0

    .line 395
    .local v0, hostAddr:Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 396
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

    .line 398
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    return-object v1
.end method

.method public static final getInterface()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 70
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    goto :goto_11
.end method

.method public static final getNHostAddresses()I
    .registers 6

    .prologue
    .line 106
    invoke-static {}, Lcom/samsung/net/HostInterface;->hasAssignedInterface()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 107
    const/4 v3, 0x1

    .line 145
    .local v3, nHostAddrs:I
    :cond_7
    :goto_7
    return v3

    .line 109
    .end local v3           #nHostAddrs:I
    :cond_8
    const/4 v3, 0x0

    .line 131
    .restart local v3       #nHostAddrs:I
    :try_start_9
    const-string v5, "p2p-wlan0-0"

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 132
    .local v4, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    .local v1, addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 134
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 136
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/samsung/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_28

    move-result v5

    if-eqz v5, :cond_13

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 142
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #ni:Ljava/net/NetworkInterface;
    :catch_28
    move-exception v2

    .line 143
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private static final hasAssignedInterface()Z
    .registers 1

    .prologue
    .line 77
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

    .line 294
    :try_start_1
    invoke-static {p0}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 295
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz v2, :cond_e

    .line 296
    const/4 v1, 0x1

    .line 300
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_e
    :goto_e
    return v1

    .line 299
    :catch_f
    move-exception v2

    goto :goto_e
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .registers 4
    .parameter "addr"

    .prologue
    const/4 v0, 0x0

    .line 88
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v1, :cond_c

    .line 89
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 101
    :cond_b
    :goto_b
    return v0

    .line 92
    :cond_c
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-eqz v1, :cond_18

    .line 93
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 96
    :cond_18
    sget-boolean v1, Lcom/samsung/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-eqz v1, :cond_25

    .line 97
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 101
    :cond_25
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .registers 2
    .parameter "ifaddr"

    .prologue
    .line 61
    const-string v0, "0.0.0.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 65
    :goto_c
    return-void

    .line 64
    :cond_d
    sput-object p0, Lcom/samsung/net/HostInterface;->ifAddress:Ljava/lang/String;

    goto :goto_c
.end method
