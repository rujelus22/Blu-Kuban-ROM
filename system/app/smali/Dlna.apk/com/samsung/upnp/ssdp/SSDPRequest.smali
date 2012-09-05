.class public Lcom/samsung/upnp/ssdp/SSDPRequest;
.super Lcom/samsung/http/HTTPRequest;
.source "SSDPRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/http/HTTPRequest;-><init>()V

    .line 37
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setVersion(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "NT"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "NTS"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "USN"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLeaseTime(I)V
    .registers 5
    .parameter "len"

    .prologue
    .line 102
    const-string v0, "Cache-Control"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max-age="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 74
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 46
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 60
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 88
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
