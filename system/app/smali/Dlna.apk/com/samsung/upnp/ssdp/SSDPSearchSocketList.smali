.class public Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SSDPSearchSocketList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/ssdp/SSDPSearchSocket;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public addSearchListener(Lcom/samsung/upnp/device/SearchListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 55
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 59
    return-void

    .line 56
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 57
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->addSearchListener(Lcom/samsung/upnp/device/SearchListener;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public close()Z
    .registers 6

    .prologue
    .line 78
    const/4 v0, 0x1

    .line 79
    .local v0, isClosed:Z
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v2

    .line 80
    .local v2, nSockets:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_6
    if-lt v1, v2, :cond_c

    .line 84
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 85
    return v0

    .line 81
    :cond_c
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    move-result-object v3

    .line 82
    .local v3, sock:Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    if-eqz v0, :cond_1c

    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->close()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v0, 0x1

    .line 80
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getSSDPSearchSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    .registers 3
    .parameter "n"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    return-object v0
.end method

.method public open()Z
    .registers 6

    .prologue
    .line 67
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v2

    .line 68
    .local v2, nHostAddrs:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 73
    const/4 v4, 0x1

    return v4

    .line 69
    :cond_9
    invoke-static {v1}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    invoke-direct {v3, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, ssdpSearchSocket:Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public start()V
    .registers 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 95
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 99
    return-void

    .line 96
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 97
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->start()V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 104
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 108
    return-void

    .line 105
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 106
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchSocket;->stop()V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
