.class public Lcom/samsung/upnp/ssdp/HTTPMUSocket;
.super Ljava/lang/Object;
.source "HTTPMUSocket.java"


# instance fields
.field protected bindAddress:Ljava/lang/String;

.field private ssdpMultiGroup:Ljava/net/InetSocketAddress;

.field private ssdpMultiIf:Ljava/net/NetworkInterface;

.field private ssdpMultiSock:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 50
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 51
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-nez v2, :cond_6

    .line 153
    :goto_5
    return v1

    .line 144
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v2, v3, v4}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 145
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_5

    .line 148
    :catch_18
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public getMulticastInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "addr"
    .parameter "port"
    .parameter "bindAddr"

    .prologue
    const/4 v2, 0x1

    .line 117
    :try_start_1
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 118
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 119
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 120
    .local v0, bindSockAddr:Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 121
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/samsung/upnp/UPnP;->getMultiGroupAddr()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 124
    invoke-static {p3}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 127
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v4, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3, v4, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 128
    iput-object p3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    .line 135
    .end local v0           #bindSockAddr:Ljava/net/InetSocketAddress;
    :goto_3d
    return v2

    .line 130
    :catch_3e
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public post(Lcom/samsung/http/HTTPRequest;)Z
    .registers 5
    .parameter "req"

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public receive()Lcom/samsung/upnp/ssdp/SSDPPacket;
    .registers 6

    .prologue
    .line 221
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 222
    .local v2, ssdvRecvBuf:[B
    new-instance v1, Lcom/samsung/upnp/ssdp/SSDPPacket;

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/samsung/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 223
    .local v1, recvPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 226
    :try_start_f
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20

    .line 233
    :goto_1f
    return-object v1

    .line 230
    :catch_20
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTTPMUSocket"

    const-string v4, "Exception"

    invoke-static {v3, v4}, Lcom/samsung/util/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .parameter "msg"
    .parameter "bindAddr"
    .parameter "bindPort"

    .prologue
    const/4 v5, 0x0

    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, msock:Ljava/net/MulticastSocket;
    if-eqz p2, :cond_30

    if-lez p3, :cond_30

    .line 165
    :try_start_6
    new-instance v4, Ljava/net/MulticastSocket;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_50

    .line 166
    .end local v3           #msock:Ljava/net/MulticastSocket;
    .local v4, msock:Ljava/net/MulticastSocket;
    :try_start_c
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_57

    move-object v3, v4

    .line 177
    .end local v4           #msock:Ljava/net/MulticastSocket;
    .restart local v3       #msock:Ljava/net/MulticastSocket;
    :goto_15
    :try_start_15
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 179
    .local v0, dgmPacket:Ljava/net/DatagramPacket;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 180
    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 181
    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V

    .line 189
    const/4 v5, 0x1

    .end local v0           #dgmPacket:Ljava/net/DatagramPacket;
    :cond_2f
    :goto_2f
    return v5

    .line 170
    :cond_30
    iget-object v6, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 171
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v2, inetSocketAddress:Ljava/net/InetSocketAddress;
    new-instance v4, Ljava/net/MulticastSocket;

    invoke-direct {v4, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .end local v3           #msock:Ljava/net/MulticastSocket;
    .restart local v4       #msock:Ljava/net/MulticastSocket;
    move-object v3, v4

    .end local v4           #msock:Ljava/net/MulticastSocket;
    .restart local v3       #msock:Ljava/net/MulticastSocket;
    goto :goto_15

    .line 174
    .end local v2           #inetSocketAddress:Ljava/net/InetSocketAddress;
    :cond_49
    new-instance v4, Ljava/net/MulticastSocket;

    invoke-direct {v4}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4e} :catch_50

    .end local v3           #msock:Ljava/net/MulticastSocket;
    .restart local v4       #msock:Ljava/net/MulticastSocket;
    move-object v3, v4

    .end local v4           #msock:Ljava/net/MulticastSocket;
    .restart local v3       #msock:Ljava/net/MulticastSocket;
    goto :goto_15

    .line 183
    :catch_50
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    :goto_51
    if-eqz v3, :cond_2f

    .line 185
    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V

    goto :goto_2f

    .line 183
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #msock:Ljava/net/MulticastSocket;
    .restart local v4       #msock:Ljava/net/MulticastSocket;
    :catch_57
    move-exception v1

    move-object v3, v4

    .end local v4           #msock:Ljava/net/MulticastSocket;
    .restart local v3       #msock:Ljava/net/MulticastSocket;
    goto :goto_51
.end method
