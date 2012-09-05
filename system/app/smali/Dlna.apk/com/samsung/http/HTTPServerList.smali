.class public Lcom/samsung/http/HTTPServerList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "HTTPServerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/http/HTTPServer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public addReceivedListener(Lcom/samsung/http/HTTPReceivedListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v1

    .line 73
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 77
    return-void

    .line 74
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPServerList;->getHTTPServer(I)Lcom/samsung/http/HTTPServer;

    move-result-object v2

    .line 75
    .local v2, server:Lcom/samsung/http/HTTPServer;
    invoke-virtual {v2, p1}, Lcom/samsung/http/HTTPServer;->addReceivedListener(Lcom/samsung/http/HTTPReceivedListener;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v1

    .line 64
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 68
    return-void

    .line 65
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPServerList;->getHTTPServer(I)Lcom/samsung/http/HTTPServer;

    move-result-object v2

    .line 66
    .local v2, server:Lcom/samsung/http/HTTPServer;
    invoke-virtual {v2, p1}, Lcom/samsung/http/HTTPServer;->addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public close()Z
    .registers 6

    .prologue
    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, isClosed:Z
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v2

    .line 92
    .local v2, nServers:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_6
    if-lt v1, v2, :cond_9

    .line 96
    return v0

    .line 93
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPServerList;->getHTTPServer(I)Lcom/samsung/http/HTTPServer;

    move-result-object v3

    .line 94
    .local v3, server:Lcom/samsung/http/HTTPServer;
    if-eqz v0, :cond_19

    invoke-virtual {v3}, Lcom/samsung/http/HTTPServer;->close()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v0, 0x1

    .line 92
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getHTTPServer(I)Lcom/samsung/http/HTTPServer;
    .registers 3
    .parameter "n"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/HTTPServer;

    return-object v0
.end method

.method public open(I)Z
    .registers 7
    .parameter "port"

    .prologue
    .line 116
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 118
    .local v3, nHostAddrs:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_5
    if-lt v2, v3, :cond_9

    .line 130
    const/4 v4, 0x1

    :goto_8
    return v4

    .line 119
    :cond_9
    invoke-static {v2}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v1, Lcom/samsung/http/HTTPServer;

    invoke-direct {v1}, Lcom/samsung/http/HTTPServer;-><init>()V

    .line 122
    .local v1, httpServer:Lcom/samsung/http/HTTPServer;
    invoke-virtual {v1, v0, p1}, Lcom/samsung/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_20

    .line 123
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->close()Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->clear()V

    .line 125
    const/4 v4, 0x0

    goto :goto_8

    .line 127
    :cond_20
    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPServerList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public start()V
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v1

    .line 140
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 144
    return-void

    .line 141
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPServerList;->getHTTPServer(I)Lcom/samsung/http/HTTPServer;

    move-result-object v2

    .line 142
    .local v2, server:Lcom/samsung/http/HTTPServer;
    invoke-virtual {v2}, Lcom/samsung/http/HTTPServer;->start()Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v1

    .line 149
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_5
    if-lt v0, v1, :cond_8

    .line 153
    return-void

    .line 150
    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPServerList;->getHTTPServer(I)Lcom/samsung/http/HTTPServer;

    move-result-object v2

    .line 151
    .local v2, server:Lcom/samsung/http/HTTPServer;
    invoke-virtual {v2}, Lcom/samsung/http/HTTPServer;->stop()Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
