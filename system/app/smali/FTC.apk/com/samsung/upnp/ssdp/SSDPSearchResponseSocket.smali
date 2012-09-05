.class public Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
.super Lcom/samsung/upnp/ssdp/HTTPUSocket;
.source "SSDPSearchResponseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;
    }
.end annotation


# instance fields
.field private controlPoint:Lcom/samsung/upnp/ControlPoint;

.field private deviceSearchResponseThread:Ljava/lang/Thread;

.field private pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/HTTPUSocket;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 70
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 87
    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/samsung/upnp/ControlPoint;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    return-object v0
.end method

.method public getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    return-object v0
.end method

.method public post(Ljava/lang/String;ILcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z
    .registers 5
    .parameter "addr"
    .parameter "port"
    .parameter "req"

    .prologue
    .line 165
    invoke-virtual {p3}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 8

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 93
    .local v3, thisThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    .line 94
    .local v0, ctrlPoint:Lcom/samsung/upnp/ControlPoint;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;

    move-result-object v2

    .line 95
    .local v2, pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;
    :cond_c
    :goto_c
    iget-object v5, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-eq v5, v3, :cond_11

    .line 117
    :cond_10
    return-void

    .line 96
    :cond_11
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->receive()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v1

    .line 98
    .local v1, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v1, :cond_10

    .line 100
    if-eqz v0, :cond_4b

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->isValidResponsePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 101
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;

    invoke-direct {v5, p0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;-><init>(Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    .local v4, thread:Ljava/lang/Thread;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SEARCH : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 104
    :cond_48
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 107
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_4b
    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->isValidAlivePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 110
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;

    invoke-direct {v5, p0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;-><init>(Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .restart local v4       #thread:Ljava/lang/Thread;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SEARCH : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 113
    :cond_79
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_c
.end method

.method public setControlPoint(Lcom/samsung/upnp/ControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/samsung/upnp/ControlPoint;

    .line 59
    return-void
.end method

.method public setPersonalMessageCP(Lcom/samsung/pmr/PersonalMessageControlPoint;)V
    .registers 2
    .parameter "pmcp"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;

    .line 75
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 142
    iget-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 148
    return-void
.end method
