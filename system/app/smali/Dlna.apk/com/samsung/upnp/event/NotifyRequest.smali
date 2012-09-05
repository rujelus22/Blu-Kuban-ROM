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
    .line 219
    new-instance v2, Lcom/samsung/xml/Node;

    const-string v5, "e:propertyset"

    invoke-direct {v2, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, propSetNode:Lcom/samsung/xml/Node;
    const-string v5, "e"

    const-string v6, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    .local v0, n:I
    :goto_f
    invoke-virtual {p1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v5

    if-lt v0, v5, :cond_16

    .line 243
    return-object v2

    .line 230
    :cond_16
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v5, "e:property"

    invoke-direct {v1, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, propNode:Lcom/samsung/xml/Node;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 233
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->isSendEvents()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 234
    new-instance v4, Lcom/samsung/xml/Node;

    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, varNameNode:Lcom/samsung/xml/Node;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v4}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 237
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 229
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
    .line 173
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v3, "e:propertyset"

    invoke-direct {v1, v3}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, propSetNode:Lcom/samsung/xml/Node;
    const-string v3, "e"

    const-string v4, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/samsung/xml/Node;

    const-string v3, "e:property"

    invoke-direct {v0, v3}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, propNode:Lcom/samsung/xml/Node;
    invoke-virtual {v1, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 182
    new-instance v2, Lcom/samsung/xml/Node;

    invoke-direct {v2, p1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, varNameNode:Lcom/samsung/xml/Node;
    invoke-virtual {v2, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 186
    return-object v1
.end method

.method private getProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/event/Property;
    .registers 6
    .parameter "varNode"

    .prologue
    .line 268
    new-instance v1, Lcom/samsung/upnp/event/Property;

    invoke-direct {v1}, Lcom/samsung/upnp/event/Property;-><init>()V

    .line 269
    .local v1, prop:Lcom/samsung/upnp/event/Property;
    if-nez p1, :cond_8

    .line 278
    :goto_7
    return-object v1

    .line 272
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, variableName:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 274
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    .line 275
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_1b
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/event/Property;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/upnp/event/Property;->setValue(Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public getNT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    const-string v1, "NT"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, nt:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 91
    const-string v0, ""

    .line 92
    .end local v0           #nt:Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public getPropertyList()Lcom/samsung/upnp/event/PropertyList;
    .registers 7

    .prologue
    .line 283
    new-instance v3, Lcom/samsung/upnp/event/PropertyList;

    invoke-direct {v3}, Lcom/samsung/upnp/event/PropertyList;-><init>()V

    .line 284
    .local v3, properties:Lcom/samsung/upnp/event/PropertyList;
    invoke-virtual {p0}, Lcom/samsung/upnp/event/NotifyRequest;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v4

    .line 285
    .local v4, varSetNode:Lcom/samsung/xml/Node;
    if-nez v4, :cond_c

    .line 294
    :cond_b
    return-object v3

    .line 287
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v4}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 288
    invoke-virtual {v4, v0}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 289
    .local v2, propNode:Lcom/samsung/xml/Node;
    if-nez v2, :cond_1c

    .line 287
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 291
    :cond_1c
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/upnp/event/NotifyRequest;->getProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/event/Property;

    move-result-object v1

    .line 292
    .local v1, prop:Lcom/samsung/upnp/event/Property;
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/event/PropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public getSEQ()J
    .registers 3

    .prologue
    .line 140
    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/NotifyRequest;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/NotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNT()Z
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/upnp/event/NotifyRequest;->getNT()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, nt:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isValidNTS()Z
    .registers 2

    .prologue
    .line 112
    const-string v0, "NTS"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/NotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/device/NTS;->isEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 107
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setRequest(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z
    .registers 12
    .parameter "sub"
    .parameter "stateTable"

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 198
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 202
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/event/NotifyRequest;->setURI(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v1, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 205
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 206
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v7}, Lcom/samsung/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 210
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setContentType(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p2}, Lcom/samsung/upnp/event/NotifyRequest;->createPropertySetNode(Lcom/samsung/upnp/ServiceStateTable;)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 212
    .local v6, propSetNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/event/NotifyRequest;->setContent(Lcom/samsung/xml/Node;)V

    .line 214
    const/4 v8, 0x1

    return v8
.end method

.method public setRequest(Lcom/samsung/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "sub"
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 152
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 156
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/event/NotifyRequest;->setURI(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v1, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 159
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 160
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v7}, Lcom/samsung/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 164
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lcom/samsung/upnp/event/NotifyRequest;->setContentType(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p2, p3}, Lcom/samsung/upnp/event/NotifyRequest;->createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 166
    .local v6, propSetNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/event/NotifyRequest;->setContent(Lcom/samsung/xml/Node;)V

    .line 168
    const/4 v8, 0x1

    return v8
.end method

.method public setSEQ(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 135
    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 121
    const-string v0, "SID"

    invoke-static {p1}, Lcom/samsung/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
