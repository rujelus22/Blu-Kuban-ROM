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
    .line 39
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 107
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_b

    .line 113
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 114
    return-void

    .line 108
    :cond_b
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 109
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_14

    .line 107
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 111
    :cond_14
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    goto :goto_11
.end method

.method public getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    .registers 6
    .parameter "n"

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, ssdpSoc:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-object v2, v0
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_a

    .line 55
    :goto_9
    return-object v2

    .line 52
    :catch_a
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_9
.end method

.method public open()Z
    .registers 8

    .prologue
    .line 94
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v2

    .line 95
    .local v2, nHostAddrs:I
    const-string v4, "test4"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notify open"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    .local v1, n:I
    :goto_19
    if-lt v1, v2, :cond_1d

    .line 101
    const/4 v4, 0x1

    return v4

    .line 97
    :cond_1d
    invoke-static {v1}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, ssdpNotifySocket:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 5
    .parameter "ctrlPoint"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 65
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 71
    return-void

    .line 66
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 67
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 65
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 69
    :cond_11
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    goto :goto_e
.end method

.method public start()V
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 123
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 129
    return-void

    .line 124
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 125
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 123
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 127
    :cond_11
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->start()V

    goto :goto_e
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 134
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 140
    return-void

    .line 135
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 136
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
    if-nez v2, :cond_11

    .line 134
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 138
    :cond_11
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->stop()V

    goto :goto_e
.end method
