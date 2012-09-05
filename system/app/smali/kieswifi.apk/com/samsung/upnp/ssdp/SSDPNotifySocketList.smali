.class public Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SSDPNotifySocketList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/ssdp/SSDPNotifySocket;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 103
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_b

    .line 109
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 110
    return-void

    .line 104
    :cond_b
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 105
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_14

    .line 103
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 107
    :cond_14
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    goto :goto_11
.end method

.method public getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    .registers 6
    .parameter "n"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, ssdpSoc:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-object v2, v0
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_a

    .line 53
    :goto_9
    return-object v2

    .line 50
    :catch_a
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_9
.end method

.method public open()Z
    .registers 6

    .prologue
    .line 91
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v2

    .line 92
    .local v2, nHostAddrs:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 97
    const/4 v4, 0x1

    return v4

    .line 93
    :cond_9
    invoke-static {v1}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, ssdpNotifySocket:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 5
    .parameter "ctrlPoint"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 63
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 69
    return-void

    .line 64
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 65
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 63
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 67
    :cond_11
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    goto :goto_e
.end method

.method public start()V
    .registers 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 119
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 125
    return-void

    .line 120
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 121
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 119
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 123
    :cond_11
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->start()V

    goto :goto_e
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 130
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 136
    return-void

    .line 131
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 132
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 130
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 134
    :cond_11
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->stop()V

    goto :goto_e
.end method
