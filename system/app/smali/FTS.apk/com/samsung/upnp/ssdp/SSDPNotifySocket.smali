.class public Lcom/samsung/upnp/ssdp/SSDPNotifySocket;
.super Lcom/samsung/upnp/ssdp/HTTPMUSocket;
.source "SSDPNotifySocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;
    }
.end annotation


# static fields
.field static i:I


# instance fields
.field private controlPoint:Lcom/samsung/upnp/ControlPoint;

.field private deviceNotifyThread:Ljava/lang/Thread;

.field private pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

.field private useIPv6Address:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 190
    const/4 v0, 0x1

    sput v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->i:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "bindAddr"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 81
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 97
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 130
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 64
    const-string v0, "239.255.255.177"

    .line 65
    .local v0, addr:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 66
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 69
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 72
    :cond_1c
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 73
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/samsung/upnp/ControlPoint;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    return-object v0
.end method

.method public getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    return-object v0
.end method

.method public post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z
    .registers 4
    .parameter "req"

    .prologue
    .line 117
    const-string v0, "239.255.255.177"

    .line 118
    .local v0, ssdpAddr:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    if-eqz v1, :cond_a

    .line 119
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_a
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/http/HTTPRequest;)Z

    move-result v1

    .line 121
    return v1
.end method

.method public run()V
    .registers 10

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 137
    .local v5, thisThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    .line 138
    .local v0, ctrlPoint:Lcom/samsung/upnp/ControlPoint;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;

    move-result-object v4

    .line 139
    .local v4, pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 142
    :cond_f
    :goto_f
    iget-object v7, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    if-eq v7, v5, :cond_14

    .line 169
    return-void

    .line 143
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->receive()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 145
    .local v2, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v2, :cond_f

    .line 149
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 150
    .local v1, maddr:Ljava/net/InetAddress;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getHostInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 151
    .local v3, pmaddr:Ljava/net/InetAddress;
    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalidate Multicast Recieved : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    goto :goto_f

    .line 156
    :cond_45
    if-eqz v0, :cond_50

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->isValidNotifyPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 157
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 160
    :cond_50
    if-eqz v4, :cond_f

    invoke-virtual {v4, v2}, Lcom/samsung/pmr/PersonalMessageControlPoint;->isValidAlivePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 163
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;

    invoke-direct {v7, p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;-><init>(Lcom/samsung/upnp/ssdp/SSDPNotifySocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    .local v6, thread:Ljava/lang/Thread;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ALIVE : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_f
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 86
    return-void
.end method

.method public setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V
    .registers 2
    .parameter "pmcp"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 102
    return-void
.end method
