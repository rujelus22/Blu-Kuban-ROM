.class public Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SSDPSearchResponseSocketList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 131
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_b

    .line 135
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 136
    return-void

    .line 132
    :cond_b
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 133
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->close()Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public declared-synchronized getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    .registers 6
    .parameter "n"

    .prologue
    .line 78
    monitor-enter p0

    const/4 v2, 0x0

    .line 80
    .local v2, ssdpSoc:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-object v2, v0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_c

    .line 84
    :goto_a
    monitor-exit p0

    return-object v2

    .line 81
    :catch_c
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_a

    .line 78
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_11
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public open(I)Z
    .registers 9
    .parameter "port"

    .prologue
    const/4 v6, 0x0

    .line 94
    :try_start_1
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 95
    .local v3, nHostAddrs:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_6
    if-lt v2, v3, :cond_a

    .line 120
    const/4 v6, 0x1

    .end local v2           #n:I
    .end local v3           #nHostAddrs:I
    :goto_9
    return v6

    .line 96
    .restart local v2       #n:I
    .restart local v3       #nHostAddrs:I
    :cond_a
    invoke-static {v2}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v5, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v5}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 98
    .local v5, socket:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v5, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->open(Ljava/lang/String;I)Z

    move-result v4

    .line 99
    .local v4, ret:Z
    if-eqz v4, :cond_1f

    .line 101
    invoke-virtual {p0, v5}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 106
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    goto :goto_9

    .line 114
    .end local v0           #bindAddr:Ljava/lang/String;
    .end local v2           #n:I
    .end local v3           #nHostAddrs:I
    .end local v4           #ret:Z
    .end local v5           #socket:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    :catch_29
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    goto :goto_9
.end method

.method public post(Lcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z
    .registers 10
    .parameter "req"

    .prologue
    const/4 v6, 0x0

    .line 170
    if-nez p1, :cond_5

    move v3, v6

    .line 187
    :cond_4
    return v3

    .line 172
    :cond_5
    const/4 v3, 0x1

    .line 173
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v2

    .line 174
    .local v2, nSockets:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_b
    if-ge v1, v2, :cond_4

    .line 175
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v4

    .line 176
    .local v4, sock:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    if-nez v4, :cond_16

    .line 174
    :cond_13
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 179
    :cond_16
    invoke-static {v6}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, bindAddr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setLocalAddress(Ljava/lang/String;)V

    .line 181
    const-string v5, "239.255.255.177"

    .line 182
    .local v5, ssdpAddr:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 183
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v5

    .line 184
    :cond_29
    const/16 v7, 0x76c

    invoke-virtual {v4, v5, v7, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 185
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 5
    .parameter "ctrlPoint"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 51
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 55
    return-void

    .line 52
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 53
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public start()V
    .registers 5

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v2

    .line 145
    .local v2, nSockets:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_5
    if-lt v1, v2, :cond_8

    .line 153
    return-void

    .line 146
    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v3

    .line 148
    .local v3, sock:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    :try_start_c
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->start()V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_f} :catch_12

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 149
    :catch_12
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 158
    .local v1, nSockets:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 162
    return-void

    .line 159
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 160
    .local v2, sock:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->stop()V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
