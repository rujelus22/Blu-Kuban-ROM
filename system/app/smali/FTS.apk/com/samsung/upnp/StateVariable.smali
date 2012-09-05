.class public Lcom/samsung/upnp/StateVariable;
.super Lcom/samsung/upnp/xml/NodeData;
.source "StateVariable.java"


# instance fields
.field private serviceNode:Lcom/samsung/xml/Node;

.field private stateVariableNode:Lcom/samsung/xml/Node;

.field private upnpStatus:Lcom/samsung/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 376
    new-instance v0, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/StateVariable;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/StateVariable;->serviceNode:Lcom/samsung/xml/Node;

    .line 111
    new-instance v0, Lcom/samsung/xml/Node;

    invoke-direct {v0}, Lcom/samsung/xml/Node;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/StateVariable;->stateVariableNode:Lcom/samsung/xml/Node;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "serviceNode"
    .parameter "stateVarNode"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 376
    new-instance v0, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/StateVariable;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 116
    iput-object p1, p0, Lcom/samsung/upnp/StateVariable;->serviceNode:Lcom/samsung/xml/Node;

    .line 117
    iput-object p2, p0, Lcom/samsung/upnp/StateVariable;->stateVariableNode:Lcom/samsung/xml/Node;

    .line 118
    return-void
.end method

.method public static isStateVariableNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 126
    const-string v0, "stateVariable"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryListener()Lcom/samsung/upnp/control/QueryListener;
    .registers 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/StateVariableData;->getQueryListener()Lcom/samsung/upnp/control/QueryListener;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/samsung/upnp/Service;
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 94
    .local v0, serviceNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Lcom/samsung/upnp/Service;

    invoke-direct {v1, v0}, Lcom/samsung/upnp/Service;-><init>(Lcom/samsung/xml/Node;)V

    goto :goto_7
.end method

.method public getServiceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/upnp/StateVariable;->serviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 203
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/StateVariableData;

    .line 204
    .local v1, userData:Lcom/samsung/upnp/xml/StateVariableData;
    if-nez v1, :cond_17

    .line 205
    new-instance v1, Lcom/samsung/upnp/xml/StateVariableData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/StateVariableData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/StateVariableData;-><init>()V

    .line 206
    .restart local v1       #userData:Lcom/samsung/upnp/xml/StateVariableData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/StateVariableData;->setNode(Lcom/samsung/xml/Node;)V

    .line 209
    :cond_17
    return-object v1
.end method

.method public getStateVariableNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/upnp/StateVariable;->stateVariableNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/upnp/UPnPStatus;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/upnp/StateVariable;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSendEvents()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v2

    const-string v3, "sendEvents"

    invoke-virtual {v2, v3}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 181
    :cond_d
    :goto_d
    return v1

    .line 179
    :cond_e
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 180
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public performQueryListener(Lcom/samsung/upnp/control/QueryRequest;)Z
    .registers 8
    .parameter "queryReq"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getQueryListener()Lcom/samsung/upnp/control/QueryListener;

    move-result-object v0

    .line 312
    .local v0, listener:Lcom/samsung/upnp/control/QueryListener;
    if-nez v0, :cond_8

    .line 313
    const/4 v4, 0x0

    .line 327
    :goto_7
    return v4

    .line 314
    :cond_8
    new-instance v1, Lcom/samsung/upnp/control/QueryResponse;

    invoke-direct {v1}, Lcom/samsung/upnp/control/QueryResponse;-><init>()V

    .line 315
    .local v1, queryRes:Lcom/samsung/upnp/control/QueryResponse;
    new-instance v2, Lcom/samsung/upnp/StateVariable;

    invoke-direct {v2}, Lcom/samsung/upnp/StateVariable;-><init>()V

    .line 316
    .local v2, retVar:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v2, p0}, Lcom/samsung/upnp/StateVariable;->set(Lcom/samsung/upnp/StateVariable;)V

    .line 317
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 318
    const/16 v4, 0x194

    invoke-virtual {v2, v4}, Lcom/samsung/upnp/StateVariable;->setStatus(I)V

    .line 319
    invoke-interface {v0, v2}, Lcom/samsung/upnp/control/QueryListener;->queryControlReceived(Lcom/samsung/upnp/StateVariable;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 320
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/control/QueryResponse;->setResponse(Lcom/samsung/upnp/StateVariable;)V

    .line 326
    :goto_28
    invoke-virtual {p1, v1}, Lcom/samsung/upnp/control/QueryRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    .line 327
    const/4 v4, 0x1

    goto :goto_7

    .line 323
    :cond_2d
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->getStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v3

    .line 324
    .local v3, upnpStatus:Lcom/samsung/upnp/UPnPStatus;
    invoke-virtual {v3}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/upnp/control/QueryResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_28
.end method

.method public set(Lcom/samsung/upnp/StateVariable;)V
    .registers 3
    .parameter "stateVar"

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/StateVariable;->setName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/samsung/upnp/StateVariable;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/StateVariable;->setDataType(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/samsung/upnp/StateVariable;->isSendEvents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/StateVariable;->setSendEvents(Z)V

    .line 194
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/StateVariableData;->setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V

    .line 307
    return-void
.end method

.method public setSendEvents(Z)V
    .registers 5
    .parameter "state"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "sendEvents"

    if-eqz p1, :cond_e

    const-string v0, "yes"

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 171
    :cond_e
    const-string v0, "no"

    goto :goto_a
.end method

.method public setStatus(I)V
    .registers 3
    .parameter "code"

    .prologue
    .line 386
    invoke-static {p1}, Lcom/samsung/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/upnp/StateVariable;->setStatus(ILjava/lang/String;)V

    .line 387
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .registers 4
    .parameter "code"
    .parameter "descr"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/upnp/StateVariable;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/UPnPStatus;->setCode(I)V

    .line 381
    iget-object v0, p0, Lcom/samsung/upnp/StateVariable;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lcom/samsung/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, currValue:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 233
    :cond_10
    :goto_10
    return-void

    .line 224
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getStateVariableData()Lcom/samsung/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/upnp/xml/StateVariableData;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->getService()Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 228
    .local v1, service:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_10

    .line 230
    invoke-virtual {p0}, Lcom/samsung/upnp/StateVariable;->isSendEvents()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 232
    invoke-virtual {v1, p0}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/StateVariable;)V

    goto :goto_10
.end method
