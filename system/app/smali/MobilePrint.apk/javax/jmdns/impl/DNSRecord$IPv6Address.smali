.class public Ljavax/jmdns/impl/DNSRecord$IPv6Address;
.super Ljavax/jmdns/impl/DNSRecord$Address;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6Address"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .registers 13
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "addr"

    .prologue
    .line 218
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 219
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .registers 13
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "rawAddress"

    .prologue
    .line 222
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 223
    return-void
.end method


# virtual methods
.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .registers 4
    .parameter "persistent"

    .prologue
    .line 253
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 254
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 255
    return-object v0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .registers 9
    .parameter "out"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 227
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    if-eqz v4, :cond_1d

    .line 228
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 230
    .local v0, buffer:[B
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_19

    .line 231
    move-object v3, v0

    .line 232
    .local v3, tempbuffer:[B
    new-array v0, v6, [B

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-lt v1, v6, :cond_1e

    .line 241
    .end local v1           #i:I
    .end local v3           #tempbuffer:[B
    :cond_19
    array-length v2, v0

    .line 242
    .local v2, length:I
    invoke-virtual {p1, v0, v5, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 244
    .end local v0           #buffer:[B
    .end local v2           #length:I
    :cond_1d
    return-void

    .line 234
    .restart local v0       #buffer:[B
    .restart local v1       #i:I
    .restart local v3       #tempbuffer:[B
    :cond_1e
    const/16 v4, 0xb

    if-ge v1, v4, :cond_2b

    .line 235
    add-int/lit8 v4, v1, -0xc

    aget-byte v4, v3, v4

    aput-byte v4, v0, v1

    .line 233
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 237
    :cond_2b
    aput-byte v5, v0, v1

    goto :goto_28
.end method
