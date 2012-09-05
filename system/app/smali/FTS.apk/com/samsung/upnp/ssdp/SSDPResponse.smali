.class public Lcom/samsung/upnp/ssdp/SSDPResponse;
.super Lcom/samsung/http/HTTPResponse;
.source "SSDPResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 43
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ssdp/SSDPResponse;->setVersion(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/upnp/ssdp/SSDPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setLeaseTime(I)V
    .registers 5
    .parameter "len"

    .prologue
    .line 108
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 66
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setST(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 80
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
