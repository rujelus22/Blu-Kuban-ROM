.class public Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;
.super Lcom/samsung/upnp/ssdp/SSDPRequest;
.source "SSDPNotifyRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/SSDPRequest;-><init>()V

    .line 34
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 35
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setURI(Ljava/lang/String;)V

    .line 36
    return-void
.end method
