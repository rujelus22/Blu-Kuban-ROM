.class public Lcom/samsung/upnp/ssdp/HTTPUSocket;
.super Ljava/lang/Object;
.source "HTTPUSocket.java"


# instance fields
.field private localAddr:Ljava/lang/String;

.field private ssdpUniSock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/HTTPUSocket;->open()Z

    .line 60
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-nez v2, :cond_6

    .line 175
    :goto_5
    return v1

    .line 167
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    .line 170
    :catch_f
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 172
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 86
    iget-object v1, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 92
    :goto_a
    return-object v1

    .line 87
    :cond_b
    iget-object v1, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1c

    .line 88
    iget-object v1, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 89
    .local v0, localAddrTemp:Ljava/net/InetAddress;
    if-eqz v0, :cond_1c

    .line 90
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 92
    .end local v0           #localAddrTemp:Ljava/net/InetAddress;
    :cond_1c
    const-string v1, ""

    goto :goto_a
.end method

.method public open()Z
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/HTTPUSocket;->close()Z

    .line 104
    :try_start_3
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    .line 111
    const/4 v1, 0x1

    :goto_b
    return v1

    .line 106
    :catch_c
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9
    .parameter "addr"
    .parameter "port"
    .parameter "msg"

    .prologue
    .line 186
    :try_start_0
    invoke-static {p1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 187
    .local v2, inetAddr:Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v3, v4, v2, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 188
    .local v0, dgmPacket:Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_1e

    .line 189
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    .line 198
    :cond_1e
    const/4 v3, 0x1

    .end local v0           #dgmPacket:Ljava/net/DatagramPacket;
    .end local v2           #inetAddr:Ljava/net/InetAddress;
    :goto_1f
    return v3

    .line 191
    :catch_20
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 196
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public receive()Lcom/samsung/upnp/ssdp/SSDPPacket;
    .registers 6

    .prologue
    .line 207
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 208
    .local v2, ssdvRecvBuf:[B
    new-instance v1, Lcom/samsung/upnp/ssdp/SSDPPacket;

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/samsung/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 209
    .local v1, recvPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/HTTPUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 211
    :try_start_11
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_22

    .line 220
    .end local v1           #recvPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    :goto_21
    return-object v1

    .line 214
    .restart local v1       #recvPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    :catch_22
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_21
.end method
