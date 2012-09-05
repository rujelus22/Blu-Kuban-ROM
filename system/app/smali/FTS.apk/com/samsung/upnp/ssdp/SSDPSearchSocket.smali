.class public Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
.super Lcom/samsung/upnp/ssdp/HTTPMUSocket;
.source "SSDPSearchSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private deviceSearchListenerList:Lcom/samsung/util/ListenerList;

.field private deviceSearchThread:Ljava/lang/Thread;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/samsung/util/ListenerList;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "bindAddr"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/samsung/util/ListenerList;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;)Z

    .line 51
    return-void
.end method


# virtual methods
.method public addSearchListener(Lcom/samsung/upnp/device/SearchListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .registers 4
    .parameter "bindAddr"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    .line 60
    const-string v0, "239.255.255.177"

    .line 61
    .local v0, addr:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 62
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 63
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 66
    :cond_14
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public performSearchListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 7
    .parameter "ssdpPacket"

    .prologue
    .line 87
    const-string v3, "SSDPSearchSocket"

    const-string v4, "Perform Search Listener"

    invoke-static {v3, v4}, Lcom/samsung/util/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 89
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_e
    if-lt v2, v1, :cond_11

    .line 93
    return-void

    .line 90
    :cond_11
    iget-object v3, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/device/SearchListener;

    .line 91
    .local v0, listener:Lcom/samsung/upnp/device/SearchListener;
    invoke-interface {v0, p1}, Lcom/samsung/upnp/device/SearchListener;->deviceSearchReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public run()V
    .registers 4

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 105
    .local v1, thisThread:Ljava/lang/Thread;
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    if-eq v2, v1, :cond_9

    .line 115
    return-void

    .line 106
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->receive()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 110
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isDiscover()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->performSearchListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    goto :goto_4
.end method

.method public start()V
    .registers 4

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 120
    invoke-static {}, Lcom/samsung/util/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 121
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSDP SEARCH LISTEN"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    :cond_23
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->close()Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 129
    return-void
.end method
