.class public Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;
.super Lcom/samsung/upnp/ssdp/SSDPPacket;
.source "LocalSSDPNotifyPacket.java"


# instance fields
.field private req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)V
    .registers 2
    .parameter "req"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/SSDPPacket;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    const-string v1, "Cache-Control"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    const-string v1, "HOST"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInetAddress()Ljava/net/InetAddress;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 92
    const-string v0, "127.0.0.1"

    .line 93
    .local v0, addrStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, host:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, canmaIdx:I
    if-ltz v1, :cond_3c

    .line 96
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_24

    .line 98
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_3c

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_3c
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v3, isockaddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getLeaseTime()I
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMAN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    const-string v1, "MAN"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSearch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, ""

    return-object v0
.end method

.method public getMX()I
    .registers 4

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    const-string v2, "MX"

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 78
    :goto_10
    return v1

    .line 77
    :catch_11
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getNT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getNTS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getST()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    const-string v1, "ST"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->req:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->getUSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/NTS;->isAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isByeBye()Z
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/NTS;->isByeBye(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDiscover()Z
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getMAN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/MAN;->isDiscover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPMRDevice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/device/NT;->isPMRDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 116
    :cond_b
    :goto_b
    return v0

    .line 114
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/device/ST;->isPMRDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 116
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getMSearch()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, mSearch:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 155
    :cond_7
    :goto_7
    return v1

    .line 146
    :cond_8
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;->getMX()I

    move-result v2

    if-ltz v2, :cond_7

    .line 155
    const/4 v1, 0x1

    goto :goto_7
.end method
