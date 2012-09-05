.class public Lcom/samsung/upnp/control/ControlRequest;
.super Lcom/samsung/soap/SOAPRequest;
.source "ControlRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public isQueryControl()Z
    .registers 2

    .prologue
    .line 79
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/control/ControlRequest;->isSOAPAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setRequestHost(Lcom/samsung/upnp/Service;)V
    .registers 8
    .parameter "service"

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 171
    :goto_2
    return-void

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, ctrlURL:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v4

    .line 136
    .local v4, rootDevice:Lcom/samsung/upnp/Device;
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/samsung/upnp/control/ControlRequest;->setURI(Ljava/lang/String;Z)V

    .line 140
    const-string v1, ""

    .line 141
    .local v1, postURL:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 142
    move-object v1, v0

    .line 144
    :cond_18
    if-eqz v4, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_24

    .line 145
    invoke-virtual {v4}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_24
    if-eqz v4, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_30

    .line 150
    invoke-virtual {v4}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_30
    invoke-static {v1}, Lcom/samsung/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, reqHost:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, reqPort:I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/control/ControlRequest;->setHost(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/control/ControlRequest;->setRequestHost(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/control/ControlRequest;->setRequestPort(I)V

    goto :goto_2
.end method
