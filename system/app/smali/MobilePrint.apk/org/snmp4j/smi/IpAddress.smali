.class public Lorg/snmp4j/smi/IpAddress;
.super Lorg/snmp4j/smi/SMIAddress;
.source "IpAddress.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromByteArray;


# static fields
.field public static final ANY_IPADDRESS:Ljava/net/InetAddress; = null

.field private static final IPANYADDRESS:[B = null

.field static class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field private static final serialVersionUID:J = -0x209b3fb22481989L


# instance fields
.field private inetAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lorg/snmp4j/smi/IpAddress;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    if-nez v0, :cond_21

    const-string v0, "org.snmp4j.smi.AbstractVariable"

    invoke-static {v0}, Lorg/snmp4j/smi/IpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/IpAddress;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/IpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/snmp4j/smi/IpAddress;->IPANYADDRESS:[B

    .line 46
    invoke-static {}, Lorg/snmp4j/smi/IpAddress;->createAnyAddress()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/IpAddress;->ANY_IPADDRESS:Ljava/net/InetAddress;

    return-void

    .line 41
    :cond_21
    sget-object v0, Lorg/snmp4j/smi/IpAddress;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    goto :goto_c

    .line 44
    :array_24
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 54
    sget-object v0, Lorg/snmp4j/smi/IpAddress;->ANY_IPADDRESS:Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/IpAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_f
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 64
    if-nez p1, :cond_b

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_b
    iput-object p1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    .line 68
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "addressBytes"

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 92
    :try_start_3
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_9} :catch_a

    .line 97
    return-void

    .line 94
    :catch_a
    move-exception v0

    .line 95
    .local v0, ex:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
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

.method private static createAnyAddress()Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 209
    :try_start_0
    sget-object v1, Lorg/snmp4j/smi/IpAddress;->IPANYADDRESS:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 214
    .local v0, ex:Ljava/lang/Exception;
    :goto_6
    return-object v1

    .line 211
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 212
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-object v1, Lorg/snmp4j/smi/IpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to create any IpAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 214
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;
    .registers 6
    .parameter "address"

    .prologue
    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 132
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v2, Lorg/snmp4j/smi/IpAddress;

    invoke-direct {v2, v0}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/net/InetAddress;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 136
    .end local v0           #addr:Ljava/net/InetAddress;
    :goto_9
    return-object v2

    .line 134
    :catch_a
    move-exception v1

    .line 135
    .local v1, ex:Ljava/lang/Exception;
    sget-object v2, Lorg/snmp4j/smi/IpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to parse IpAddress from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_9
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 218
    new-instance v0, Lorg/snmp4j/smi/IpAddress;

    iget-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .parameter "o"

    .prologue
    .line 151
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    iget-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 152
    .local v0, a:Lorg/snmp4j/smi/OctetString;
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    check-cast p1, Lorg/snmp4j/smi/IpAddress;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 164
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeString(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[B

    move-result-object v1

    .line 165
    .local v1, value:[B
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2e

    .line 166
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding Counter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_2e
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4c

    .line 170
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "IpAddress encoding error, wrong length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_4c
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    .line 174
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 8
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 177
    new-array v0, v5, [B

    .line 178
    .local v0, address:[B
    iget-object v3, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_26

    .line 179
    iget-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet6Address;

    .line 180
    .local v1, v6Addr:Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 181
    iget-object v3, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 182
    .local v2, v6Bytes:[B
    array-length v3, v2

    add-int/lit8 v3, v3, -0x5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .end local v1           #v6Addr:Ljava/net/Inet6Address;
    .end local v2           #v6Bytes:[B
    :cond_20
    :goto_20
    const/16 v3, 0x40

    invoke-static {p1, v3, v0}, Lorg/snmp4j/asn1/BER;->encodeString(Ljava/io/OutputStream;B[B)V

    .line 189
    return-void

    .line 186
    :cond_26
    iget-object v3, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 156
    instance-of v1, p1, Lorg/snmp4j/smi/IpAddress;

    if-nez v1, :cond_6

    .line 159
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/IpAddress;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 7
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 240
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 241
    .local v2, rawValue:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 242
    invoke-virtual {p1, v1}, Lorg/snmp4j/smi/OID;->get(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 245
    :cond_13
    :try_start_13
    invoke-virtual {p0, v2}, Lorg/snmp4j/smi/IpAddress;->setAddress([B)V
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_16} :catch_17

    .line 250
    return-void

    .line 247
    :catch_17
    move-exception v0

    .line 248
    .local v0, ex:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBERLength()I
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x6

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 100
    const/16 v0, 0x40

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    .line 116
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public parseAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 142
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_8

    .line 143
    const/4 v1, 0x1

    .line 146
    :goto_7
    return v1

    .line 145
    :catch_8
    move-exception v0

    .line 146
    .local v0, uhex:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public setAddress([B)V
    .registers 3
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    .line 197
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .registers 2
    .parameter "inetAddress"

    .prologue
    .line 200
    iput-object p1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    .line 201
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/IpAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be parsed by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2b
    return-void
.end method

.method public setValue([B)V
    .registers 4
    .parameter "value"

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/IpAddress;->setAddress([B)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_4

    .line 266
    return-void

    .line 263
    :catch_4
    move-exception v0

    .line 264
    .local v0, ex:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/snmp4j/smi/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 270
    invoke-virtual {p0}, Lorg/snmp4j/smi/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 272
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toInt()I
    .registers 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toLong()J
    .registers 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    iget-object v1, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, addressString:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 8
    .parameter "impliedLength"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 230
    new-array v0, v4, [B

    .line 231
    .local v0, address:[B
    iget-object v3, p0, Lorg/snmp4j/smi/IpAddress;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    new-instance v2, Lorg/snmp4j/smi/OID;

    new-array v3, v4, [I

    invoke-direct {v2, v3}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 233
    .local v2, subIndex:Lorg/snmp4j/smi/OID;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v3, v0

    if-ge v1, v3, :cond_22

    .line 234
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v1, v3}, Lorg/snmp4j/smi/OID;->set(II)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 236
    :cond_22
    return-object v2
.end method
