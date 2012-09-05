.class public Lcom/samsung/upnp/ssdp/SSDPSearchRequest;
.super Lcom/samsung/upnp/ssdp/SSDPRequest;
.source "SSDPSearchRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    const-string v0, "upnp:rootdevice"

    invoke-direct {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "serachTarget"

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "serachTarget"
    .parameter "mx"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/upnp/ssdp/SSDPRequest;-><init>()V

    .line 37
    const-string v0, "M-SEARCH"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setMethod(Ljava/lang/String;)V

    .line 38
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setURI(Ljava/lang/String;)V

    .line 40
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "MX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "MAN"

    const-string v1, "\"ssdp:discover\""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setLocalAddress(Ljava/lang/String;)V
    .registers 4
    .parameter "bindAddr"

    .prologue
    .line 61
    const-string v0, "239.255.255.250"

    .line 62
    .local v0, ssdpAddr:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 63
    invoke-static {}, Lcom/samsung/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_c
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;->setHost(Ljava/lang/String;I)V

    .line 65
    return-void
.end method
