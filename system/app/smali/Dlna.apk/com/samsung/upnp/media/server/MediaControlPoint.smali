.class public Lcom/samsung/upnp/media/server/MediaControlPoint;
.super Lcom/samsung/upnp/ControlPoint;
.source "MediaControlPoint.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public addLocalDevice(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;)V
    .registers 6
    .parameter "ssdpReq"
    .parameter "localAddr"

    .prologue
    .line 11
    new-instance v0, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/media/server/LocalSSDPNotifyPacket;-><init>(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)V

    .line 12
    .local v0, ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 14
    invoke-super {p0, v0}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 15
    return-void
.end method
