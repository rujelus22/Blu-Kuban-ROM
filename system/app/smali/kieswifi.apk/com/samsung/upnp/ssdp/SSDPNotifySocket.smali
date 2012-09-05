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
    .line 170
    const/4 v0, 0x1

    sput v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->i:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "bindAddr"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 83
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 112
    iput-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 52
    const-string v0, "239.255.255.250"

    .line 53
    .local v0, addr:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 54
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 55
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 58
    :cond_1c
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 59
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/samsung/upnp/ControlPoint;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    return-object v0
.end method

.method public getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    return-object v0
.end method

.method public post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z
    .registers 4
    .parameter "req"

    .prologue
    .line 101
    const-string v0, "239.255.255.250"

    .line 102
    .local v0, ssdpAddr:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    if-eqz v1, :cond_a

    .line 103
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_a
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/http/HTTPRequest;)Z

    move-result v1

    return v1
.end method

.method public run()V
    .registers 10

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 118
    .local v5, thisThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    .line 119
    .local v0, ctrlPoint:Lcom/samsung/upnp/ControlPoint;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;

    move-result-object v4

    .line 120
    .local v4, pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 122
    :cond_f
    :goto_f
    iget-object v7, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    if-eq v7, v5, :cond_14

    .line 150
    return-void

    .line 123
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->receive()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 125
    .local v2, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v2, :cond_f

    .line 129
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 130
    .local v1, maddr:Ljava/net/InetAddress;
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getHostInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 131
    .local v3, pmaddr:Ljava/net/InetAddress;
    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 132
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

    .line 136
    :cond_45
    if-eqz v0, :cond_70

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->isValidNotifyPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 137
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;

    invoke-direct {v7, p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;-><init>(Lcom/samsung/upnp/ssdp/SSDPNotifySocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
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

    .line 139
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 142
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_70
    if-eqz v4, :cond_f

    invoke-virtual {v4, v2}, Lcom/samsung/pmr/PersonalMessageControlPoint;->isValidAlivePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 145
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;

    invoke-direct {v7, p0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket$Worker;-><init>(Lcom/samsung/upnp/ssdp/SSDPNotifySocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    .restart local v6       #thread:Ljava/lang/Thread;
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

    .line 147
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 72
    return-void
.end method

.method public setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V
    .registers 2
    .parameter "pmcp"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 88
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 174
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LISTEN MAIN"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/upnp/ssdp/HTTPMUSocket;->bindAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->i:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 183
    return-void
.end method
