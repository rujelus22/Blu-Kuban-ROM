.class public Lcom/samsung/upnp/ssdp/SSDPSearchResponse;
.super Lcom/samsung/upnp/ssdp/SSDPResponse;
.source "SSDPSearchResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/SSDPResponse;-><init>()V

    .line 36
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setStatusCode(I)V

    .line 37
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setCacheControl(I)V

    .line 38
    const-string v0, "Server"

    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
