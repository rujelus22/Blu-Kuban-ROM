.class public Lcom/samsung/upnp/ssdp/SSDPPacket;
.super Ljava/lang/Object;
.source "SSDPPacket.java"


# instance fields
.field private dgmPacket:Ljava/net/DatagramPacket;

.field protected localAddr:Ljava/lang/String;

.field private packetBytes:[B

.field protected timeStamp:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 66
    iput-object v1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 67
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5
    .parameter "buf"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 61
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 62
    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .registers 6

    .prologue
    .line 141
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    if-eqz v3, :cond_7

    .line 142
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 153
    :goto_6
    return-object v3

    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 146
    .local v0, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 147
    .local v2, packetLen:I
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 148
    .local v1, packetData:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 153
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->packetBytes:[B

    goto :goto_6
.end method

.method public getDatagramPacket()Ljava/net/DatagramPacket;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInetAddress()Ljava/net/InetAddress;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 228
    const-string v0, "127.0.0.1"

    .line 229
    .local v0, addrStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, host:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, canmaIdx:I
    if-ltz v1, :cond_3c

    .line 232
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_24

    .line 234
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_3c

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_3c
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 239
    .local v3, isockaddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getLeaseTime()I
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "LOCATION"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMAN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSearch()Ljava/lang/String;
    .registers 6

    .prologue
    .line 212
    new-instance v2, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, strReader:Ljava/io/StringReader;
    new-instance v1, Ljava/io/LineNumberReader;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;I)V

    .line 215
    .local v1, lineReader:Ljava/io/LineNumberReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v3

    .line 219
    :goto_19
    return-object v3

    .line 216
    :catch_1a
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    const-string v3, ""

    goto :goto_19
.end method

.method public getMX()I
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getIntegerValue([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public getST()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lcom/samsung/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/NTS;->isAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isByeBye()Z
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/NTS;->isByeBye(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDiscover()Z
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getMAN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/MAN;->isDiscover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPMRDevice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/device/NT;->isPMRDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 261
    :cond_b
    :goto_b
    return v0

    .line 259
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/device/ST;->isPMRDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 261
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getMSearch()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, mSearch:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 300
    :cond_7
    :goto_7
    return v1

    .line 290
    :cond_8
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getMX()I

    move-result v2

    if-ltz v2, :cond_7

    .line 300
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "addr"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/samsung/upnp/ssdp/SSDPPacket;->timeStamp:J

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 310
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
