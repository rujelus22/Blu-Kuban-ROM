.class public Lcom/samsung/upnp/event/NotifyRequest;
.super Lcom/samsung/soap/SOAPRequest;
.source "NotifyRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPRequest;)V
    .registers 2
    .parameter "httpReq"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/event/NotifyRequest;->set(Lcom/samsung/http/HTTPRequest;)V

    .line 75
    return-void
.end method

.method private createPropertySetNode(Lcom/samsung/upnp/ServiceStateTable;)Lcom/samsung/xml/Node;
    .registers 9
    .parameter "stateTable"

    .prologue
    .line 199
    new-instance v2, Lcom/samsung/xml/Node;

    const-string v5, "e:propertyset"

    invoke-direct {v2, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, propSetNode:Lcom/samsung/xml/Node;
    const-string v5, "e"

    const-string v6, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .local v0, n:I
    :goto_f
    invoke-virtual {p1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v5

    if-lt v0, v5, :cond_16

    .line 223
    return-object v2

    .line 210
    :cond_16
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v5, "e:property"

    invoke-direct {v1, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, propNode:Lcom/samsung/xml/Node;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 213
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->isSendEvents()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 214
    new-instance v4, Lcom/samsung/xml/Node;

    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 215
    .local v4, varNameNode:Lcom/samsung/xml/Node;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v4}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 217
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 209
    .end local v4           #varNameNode:Lcom/samsung/xml/Node;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 8
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 153
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v3, "e:propertyset"

    invoke-direct {v1, v3}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, propSetNode:Lcom/samsung/xml/Node;
    const-string v3, "e"

    const-string v4, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/samsung/xml/Node;

    const-string v3, "e:property"

    invoke-direct {v0, v3}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, propNode:Lcom/samsung/xml/Node;
    invoke-virtual {v1, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 162
    new-instance v2, Lcom/samsung/xml/Node;

    invoke-direct {v2, p1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, varNameNode:Lcom/samsung/xml/Node;
    invoke-virtual {v2, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 166
    return-object v1
.end method

.method private getProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/event/Property;
    .registers 6
    .parameter "varNode"

    .prologue
    .line 248
    new-instance v1, Lcom/samsung/upnp/event/Property;

    invoke-direct {v1}, Lcom/samsung/upnp/event/Property;-><init>()V

    .line 249
    .local v1, prop:Lcom/samsung/upnp/event/Property;
    if-nez p1, :cond_8

    .line 258
    :goto_7
    return-object v1

    .line 252
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, variableName:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 254
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    .line 255
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    :cond_1b
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/event/Property;->setName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/upnp/event/Property;->setValue(Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public getPropertyList()Lcom/samsung/upnp/event/PropertyList;
    .registers 7

    .prologue
    .line 263
    new-instance v3, Lcom/samsung/upnp/event/PropertyList;

    invoke-direct {v3}, Lcom/samsung/upnp/event/PropertyList;-><init>()V

    .line 264
    .local v3, properties:Lcom/samsung/upnp/event/PropertyList;
    invoke-virtual {p0}, Lcom/samsung/upnp/event/NotifyRequest;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v4

    .line 265
    .local v4, varSetNode:Lcom/samsung/xml/Node;
    if-nez v4, :cond_c

    .line 274
    :cond_b
    return-object v3

    .line 267
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v4}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 268
    invoke-virtual {v4, v0}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 269
    .local v2, propNode:Lcom/samsung/xml/Node;
    if-nez v2, :cond_1c

    .line 267
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 271
    :cond_1c
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/upnp/event/NotifyRequest;->getProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/event/Property;

    move-result-object v1

    .line 272
    .local v1, prop:Lcom/samsung/upnp/event/Property;
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/event/PropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public getSEQ()J
    .registers 3

    .prologue
    .line 120
    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/NotifyRequest;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/NotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 83
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 92
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setRequest(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z
    .registers 12
    .parameter "sub"
    .parameter "stateTable"

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 178
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 182
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/event/NotifyRequest;->setURI(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v1, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 185
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 186
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v7}, Lcom/samsung/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 190
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setContentType(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p2}, Lcom/samsung/upnp/event/NotifyRequest;->createPropertySetNode(Lcom/samsung/upnp/ServiceStateTable;)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 192
    .local v6, propSetNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/event/NotifyRequest;->setContent(Lcom/samsung/xml/Node;)V

    .line 194
    const/4 v8, 0x1

    return v8
.end method

.method public setRequest(Lcom/samsung/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "sub"
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 132
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 136
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/event/NotifyRequest;->setURI(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v1, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 139
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 140
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v7}, Lcom/samsung/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 144
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setContentType(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/samsung/upnp/event/NotifyRequest;->createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 146
    .local v6, propSetNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/event/NotifyRequest;->setContent(Lcom/samsung/xml/Node;)V

    .line 148
    const/4 v8, 0x1

    return v8
.end method

.method public setSEQ(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 115
    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 101
    const-string v0, "SID"

    invoke-static {p1}, Lcom/samsung/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
