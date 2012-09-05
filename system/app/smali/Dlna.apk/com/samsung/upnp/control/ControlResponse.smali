.class public Lcom/samsung/upnp/control/ControlResponse;
.super Lcom/samsung/soap/SOAPResponse;
.source "ControlResponse.java"


# instance fields
.field private upnpErr:Lcom/samsung/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/soap/SOAPResponse;-><init>()V

    .line 121
    new-instance v0, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/control/ControlResponse;->upnpErr:Lcom/samsung/upnp/UPnPStatus;

    .line 41
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/control/ControlResponse;->setServer(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/samsung/soap/SOAPResponse;)V
    .registers 3
    .parameter "soapRes"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/soap/SOAPResponse;-><init>(Lcom/samsung/soap/SOAPResponse;)V

    .line 121
    new-instance v0, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/control/ControlResponse;->upnpErr:Lcom/samsung/upnp/UPnPStatus;

    .line 47
    return-void
.end method

.method private createFaultResponseNode(ILjava/lang/String;)Lcom/samsung/xml/Node;
    .registers 12
    .parameter "errCode"
    .parameter "errDescr"

    .prologue
    .line 78
    new-instance v4, Lcom/samsung/xml/Node;

    const-string v7, "s:Fault"

    invoke-direct {v4, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, faultNode:Lcom/samsung/xml/Node;
    new-instance v3, Lcom/samsung/xml/Node;

    const-string v7, "faultcode"

    invoke-direct {v3, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, faultCodeNode:Lcom/samsung/xml/Node;
    const-string v7, "s:Client"

    invoke-virtual {v3, v7}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4, v3}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 86
    new-instance v5, Lcom/samsung/xml/Node;

    const-string v7, "faultstring"

    invoke-direct {v5, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, faultStringNode:Lcom/samsung/xml/Node;
    const-string v7, "UPnPError"

    invoke-virtual {v5, v7}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 91
    new-instance v0, Lcom/samsung/xml/Node;

    const-string v7, "detail"

    invoke-direct {v0, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, detailNode:Lcom/samsung/xml/Node;
    invoke-virtual {v4, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 95
    new-instance v6, Lcom/samsung/xml/Node;

    const-string v7, "UPnPError"

    invoke-direct {v6, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 96
    .local v6, upnpErrorNode:Lcom/samsung/xml/Node;
    const-string v7, "xmlns"

    const-string v8, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v6}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 100
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v7, "errorCode"

    invoke-direct {v1, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, errorCodeNode:Lcom/samsung/xml/Node;
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Node;->setValue(I)V

    .line 102
    invoke-virtual {v6, v1}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 105
    new-instance v2, Lcom/samsung/xml/Node;

    const-string v7, "errorDescription"

    invoke-direct {v2, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, errorDesctiprionNode:Lcom/samsung/xml/Node;
    invoke-virtual {v2, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 109
    return-object v4
.end method

.method private getUPnPErrorCodeNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 134
    .local v0, errorNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 135
    const/4 v1, 0x0

    .line 136
    :goto_7
    return-object v1

    :cond_8
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method

.method private getUPnPErrorDescriptionNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 142
    .local v0, errorNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 143
    const/4 v1, 0x0

    .line 144
    :goto_7
    return-object v1

    :cond_8
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method

.method private getUPnPErrorNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ControlResponse;->getFaultDetailNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 126
    .local v0, detailNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 127
    const/4 v1, 0x0

    .line 128
    :goto_7
    return-object v1

    :cond_8
    const-string v1, "UPnPError"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method


# virtual methods
.method public getUPnPError()Lcom/samsung/upnp/UPnPStatus;
    .registers 4

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, code:I
    const-string v1, ""

    .line 173
    .local v1, desc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorCode()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorDescription()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/samsung/upnp/control/ControlResponse;->upnpErr:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v2, v0}, Lcom/samsung/upnp/UPnPStatus;->setCode(I)V

    .line 176
    iget-object v2, p0, Lcom/samsung/upnp/control/ControlResponse;->upnpErr:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/samsung/upnp/control/ControlResponse;->upnpErr:Lcom/samsung/upnp/UPnPStatus;

    return-object v2
.end method

.method public getUPnPErrorCode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 149
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorCodeNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 150
    .local v1, errorCodeNode:Lcom/samsung/xml/Node;
    if-nez v1, :cond_8

    .line 157
    :goto_7
    return v3

    .line 152
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, errorCodeStr:Ljava/lang/String;
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_11

    move-result v3

    goto :goto_7

    .line 156
    :catch_11
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    goto :goto_7
.end method

.method public getUPnPErrorDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;->getUPnPErrorDescriptionNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 164
    .local v0, errorDescNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 165
    const-string v1, ""

    .line 166
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public setFaultResponse(I)V
    .registers 3
    .parameter "errCode"

    .prologue
    .line 68
    invoke-static {p1}, Lcom/samsung/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/upnp/control/ControlResponse;->setFaultResponse(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public setFaultResponse(ILjava/lang/String;)V
    .registers 7
    .parameter "errCode"
    .parameter "errDescr"

    .prologue
    .line 55
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/control/ControlResponse;->setStatusCode(I)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ControlResponse;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 58
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, p1, p2}, Lcom/samsung/upnp/control/ControlResponse;->createFaultResponseNode(ILjava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 59
    .local v2, faultNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_12

    .line 60
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 62
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ControlResponse;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 63
    .local v1, envNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/control/ControlResponse;->setContent(Lcom/samsung/xml/Node;)V

    .line 64
    return-void
.end method
