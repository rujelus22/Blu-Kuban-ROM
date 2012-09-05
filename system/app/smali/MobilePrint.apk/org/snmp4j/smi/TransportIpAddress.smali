.class public abstract Lorg/snmp4j/smi/TransportIpAddress;
.super Lorg/snmp4j/smi/IpAddress;
.source "TransportIpAddress.java"


# static fields
.field static array$B:Ljava/lang/Class; = null

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$java$net$Inet6Address:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$TransportIpAddress:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field static final serialVersionUID:J = 0x9a7415bdc8ef60cL


# instance fields
.field protected port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lorg/snmp4j/smi/TransportIpAddress;->class$org$snmp4j$smi$TransportIpAddress:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.smi.TransportIpAddress"

    invoke-static {v0}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/TransportIpAddress;->class$org$snmp4j$smi$TransportIpAddress:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/TransportIpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/smi/TransportIpAddress;->class$org$snmp4j$smi$TransportIpAddress:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/snmp4j/smi/IpAddress;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;
    .registers 3
    .parameter "address"

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lorg/snmp4j/smi/UdpAddress;

    invoke-direct {v0}, Lorg/snmp4j/smi/UdpAddress;-><init>()V

    .line 100
    .local v0, a:Lorg/snmp4j/smi/UdpAddress;
    invoke-virtual {v0, p0}, Lorg/snmp4j/smi/UdpAddress;->parseAddress(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    move-result v1

    if-eqz v1, :cond_d

    .line 106
    .end local v0           #a:Lorg/snmp4j/smi/UdpAddress;
    :goto_b
    return-object v0

    .line 104
    :catch_c
    move-exception v1

    .line 106
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .parameter "o"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lorg/snmp4j/smi/IpAddress;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, result:I
    if-nez v0, :cond_10

    .line 69
    iget v1, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    check-cast p1, Lorg/snmp4j/smi/TransportIpAddress;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/TransportIpAddress;->getPort()I

    move-result v2

    sub-int v0, v1, v2

    .line 71
    .end local v0           #result:I
    :cond_10
    return v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 8
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v1}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 201
    .local v1, os:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v1, p1}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 203
    :try_start_8
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/TransportIpAddress;->setTransportAddress(Lorg/snmp4j/smi/OctetString;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 210
    return-void

    .line 205
    :catch_c
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Wrong encoding of TransportAddress"

    .line 207
    .local v2, txt:Ljava/lang/String;
    sget-object v3, Lorg/snmp4j/smi/TransportIpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 208
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 214
    .local v0, os:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 215
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lorg/snmp4j/smi/TransportIpAddress;

    if-eqz v1, :cond_16

    .line 76
    invoke-super {p0, p1}, Lorg/snmp4j/smi/IpAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast p1, Lorg/snmp4j/smi/TransportIpAddress;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/TransportIpAddress;->getPort()I

    move-result v1

    iget v2, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    .line 78
    :cond_16
    return v0
.end method

.method public getBERLength()I
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getValue()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getBERPayloadLength()I
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getBERLength()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    return v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x4

    return v0
.end method

.method public getValue()[B
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 170
    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 171
    .local v0, addr:[B
    const/4 v8, 0x0

    .line 172
    .local v8, scopeSize:I
    const/4 v7, 0x0

    .line 173
    .local v7, scopeID:I
    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_38

    .line 175
    :try_start_13
    invoke-virtual {p0}, Lorg/snmp4j/smi/TransportIpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 176
    .local v1, ip6Addr:Ljava/net/Inet6Address;
    sget-object v9, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    if-nez v9, :cond_80

    const-string v9, "java.net.Inet6Address"

    invoke-static {v9}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    :goto_25
    const-string v10, "getScopeId"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 177
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 178
    .local v6, scope:Ljava/lang/Object;
    check-cast v6, Ljava/lang/Number;

    .end local v6           #scope:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_83

    move-result v7

    .line 179
    const/4 v8, 0x4

    .line 185
    .end local v1           #ip6Addr:Ljava/net/Inet6Address;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :cond_38
    :goto_38
    array-length v9, v0

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    new-array v5, v9, [B

    .line 186
    .local v5, retval:[B
    array-length v9, v0

    invoke-static {v0, v12, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    array-length v3, v0

    .line 188
    .local v3, offset:I
    if-lez v8, :cond_6b

    .line 189
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    const/high16 v9, -0x100

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 190
    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/high16 v9, 0xff

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 191
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    const v9, 0xff00

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 192
    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    and-int/lit16 v9, v7, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 194
    :cond_6b
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    iget v9, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 195
    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    iget v9, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 196
    return-object v5

    .line 176
    .end local v3           #offset:I
    .end local v5           #retval:[B
    .restart local v1       #ip6Addr:Ljava/net/Inet6Address;
    :cond_80
    :try_start_80
    sget-object v9, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_82} :catch_83

    goto :goto_25

    .line 181
    .end local v1           #ip6Addr:Ljava/net/Inet6Address;
    :catch_83
    move-exception v9

    goto :goto_38
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Lorg/snmp4j/smi/IpAddress;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    add-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Lorg/snmp4j/smi/IpAddress;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    if-ltz v0, :cond_13

    iget v0, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    const v1, 0xffff

    if-gt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public parseAddress(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 83
    :try_start_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "/"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, port:Ljava/lang/String;
    invoke-super {p0, v0}, Lorg/snmp4j/smi/IpAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    .line 88
    const/4 v4, 0x1

    .line 93
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #port:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_1d
    :goto_1d
    return v4

    .line 92
    :catch_1e
    move-exception v1

    .line 93
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1d
.end method

.method public setPort(I)V
    .registers 5
    .parameter "port"

    .prologue
    .line 56
    if-ltz p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    .line 57
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal port specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_20
    iput p1, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    .line 60
    return-void
.end method

.method public setTransportAddress(Lorg/snmp4j/smi/OctetString;)V
    .registers 15
    .parameter "transportAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 128
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1, v12, v10}, Lorg/snmp4j/smi/OctetString;->substring(II)Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    .line 130
    .local v3, inetAddr:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v3}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    .line 131
    .local v0, addr:[B
    array-length v10, v0

    const/16 v11, 0x8

    if-eq v10, v11, :cond_19

    array-length v10, v0

    const/16 v11, 0x14

    if-ne v10, v11, :cond_ef

    .line 133
    :cond_19
    array-length v10, v0

    add-int/lit8 v10, v10, -0x4

    new-array v4, v10, [B

    .line 134
    .local v4, ipaddr:[B
    array-length v10, v4

    invoke-static {v0, v12, v4, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v9, v4

    .line 136
    .local v9, sz:I
    aget-byte v10, v0, v9

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    add-int v8, v10, v11

    .line 141
    .local v8, scope:I
    const/4 v10, 0x3

    :try_start_42
    new-array v7, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$lang$String:Ljava/lang/Class;

    if-nez v10, :cond_c2

    const-string v10, "java.lang.String"

    invoke-static {v10}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$lang$String:Ljava/lang/Class;

    :goto_51
    aput-object v10, v7, v11

    const/4 v11, 0x1

    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->array$B:Ljava/lang/Class;

    if-nez v10, :cond_c5

    const-string v10, "[B"

    invoke-static {v10}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/snmp4j/smi/TransportIpAddress;->array$B:Ljava/lang/Class;

    :goto_60
    aput-object v10, v7, v11

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v7, v10

    .line 142
    .local v7, params:[Ljava/lang/Class;
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    if-nez v10, :cond_c8

    const-string v10, "java.net.Inet6Address"

    invoke-static {v10}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    :goto_73
    const-string v11, "getByAddress"

    invoke-virtual {v10, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 143
    .local v5, m:Ljava/lang/reflect/Method;
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v1, v10

    const/4 v10, 0x1

    aput-object v4, v1, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v1, v10

    .line 144
    .local v1, args:[Ljava/lang/Object;
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    if-nez v10, :cond_cb

    const-string v10, "java.net.Inet6Address"

    invoke-static {v10}, Lorg/snmp4j/smi/TransportIpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    :goto_97
    invoke-virtual {v5, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 145
    .local v6, o:Ljava/lang/Object;
    check-cast v6, Ljava/net/InetAddress;

    .end local v6           #o:Ljava/lang/Object;
    invoke-virtual {p0, v6}, Lorg/snmp4j/smi/TransportIpAddress;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a0} :catch_ce

    .line 156
    .end local v1           #args:[Ljava/lang/Object;
    .end local v4           #ipaddr:[B
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v7           #params:[Ljava/lang/Class;
    .end local v8           #scope:I
    .end local v9           #sz:I
    :goto_a0
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1, v10}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    iput v10, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    .line 157
    iget v10, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p1, v11}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    iput v10, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    .line 158
    return-void

    .line 141
    .restart local v4       #ipaddr:[B
    .restart local v8       #scope:I
    .restart local v9       #sz:I
    :cond_c2
    :try_start_c2
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_51

    :cond_c5
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->array$B:Ljava/lang/Class;

    goto :goto_60

    .line 142
    .restart local v7       #params:[Ljava/lang/Class;
    :cond_c8
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;

    goto :goto_73

    .line 144
    .restart local v1       #args:[Ljava/lang/Object;
    .restart local v5       #m:Ljava/lang/reflect/Method;
    :cond_cb
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->class$java$net$Inet6Address:Ljava/lang/Class;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_ce

    goto :goto_97

    .line 147
    .end local v1           #args:[Ljava/lang/Object;
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v7           #params:[Ljava/lang/Class;
    :catch_ce
    move-exception v2

    .line 148
    .local v2, ex:Ljava/lang/Exception;
    sget-object v10, Lorg/snmp4j/smi/TransportIpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Java < 1.5 does not support scoped IPv6 addresses, ignoring scope ID for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 150
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/snmp4j/smi/TransportIpAddress;->setInetAddress(Ljava/net/InetAddress;)V

    goto :goto_a0

    .line 154
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #ipaddr:[B
    .end local v8           #scope:I
    .end local v9           #sz:I
    :cond_ef
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/snmp4j/smi/TransportIpAddress;->setInetAddress(Ljava/net/InetAddress;)V

    goto :goto_a0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/snmp4j/smi/IpAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/smi/TransportIpAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
