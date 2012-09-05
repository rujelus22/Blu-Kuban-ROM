.class public Lcom/samsung/upnp/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private actionNode:Lcom/samsung/xml/Node;

.field private actionReq:Lcom/samsung/upnp/control/ActionRequest;

.field argumentList:Lcom/samsung/upnp/ArgumentList;

.field private serviceNode:Lcom/samsung/xml/Node;

.field private upnpStatus:Lcom/samsung/upnp/UPnPStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "serviceNode"
    .parameter "actionNode"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;Lcom/samsung/upnp/UPnPStatus;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;Lcom/samsung/upnp/UPnPStatus;)V
    .registers 13
    .parameter "serviceNode"
    .parameter "actionNode"
    .parameter "status"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/upnp/Action;->actionReq:Lcom/samsung/upnp/control/ActionRequest;

    .line 386
    new-instance v7, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v7}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    iput-object v7, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 80
    iput-object p1, p0, Lcom/samsung/upnp/Action;->serviceNode:Lcom/samsung/xml/Node;

    .line 81
    iput-object p2, p0, Lcom/samsung/upnp/Action;->actionNode:Lcom/samsung/xml/Node;

    .line 82
    if-eqz p3, :cond_15

    .line 83
    iput-object p3, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 86
    :cond_15
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v1

    .line 87
    .local v1, argumentListCnt:I
    new-instance v7, Lcom/samsung/upnp/ArgumentList;

    invoke-direct {v7}, Lcom/samsung/upnp/ArgumentList;-><init>()V

    iput-object v7, p0, Lcom/samsung/upnp/Action;->argumentList:Lcom/samsung/upnp/ArgumentList;

    .line 88
    const/4 v3, 0x0

    .local v3, i:I
    :goto_25
    if-lt v3, v1, :cond_28

    .line 117
    return-void

    .line 89
    :cond_28
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 90
    .local v2, argumentListNode:Lcom/samsung/xml/Node;
    if-eqz v2, :cond_3e

    .line 91
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "argumentList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 88
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 94
    :cond_41
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v6

    .line 95
    .local v6, nodeCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_46
    if-ge v4, v6, :cond_3e

    .line 96
    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 97
    .local v5, node:Lcom/samsung/xml/Node;
    invoke-static {v5}, Lcom/samsung/upnp/Argument;->isArgumentNode(Lcom/samsung/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 95
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 99
    :cond_55
    new-instance v0, Lcom/samsung/upnp/Argument;

    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lcom/samsung/upnp/Argument;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 100
    .local v0, argument:Lcom/samsung/upnp/Argument;
    iget-object v7, p0, Lcom/samsung/upnp/Action;->argumentList:Lcom/samsung/upnp/ArgumentList;

    invoke-virtual {v7, v0}, Lcom/samsung/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_52
.end method

.method private clearOutputAgumentValues()V
    .registers 6

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 231
    .local v1, allArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v0

    .line 232
    .local v0, allArgCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v0, :cond_c

    .line 238
    return-void

    .line 233
    :cond_c
    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 234
    .local v2, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->isOutDirection()Z

    move-result v4

    if-nez v4, :cond_19

    .line 232
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 236
    :cond_19
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_16
.end method

.method private getActionData()Lcom/samsung/upnp/xml/ActionData;
    .registers 3

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 263
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ActionData;

    .line 264
    .local v1, userData:Lcom/samsung/upnp/xml/ActionData;
    if-nez v1, :cond_17

    .line 265
    new-instance v1, Lcom/samsung/upnp/xml/ActionData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ActionData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ActionData;-><init>()V

    .line 266
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ActionData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ActionData;->setNode(Lcom/samsung/xml/Node;)V

    .line 269
    :cond_17
    return-object v1
.end method

.method private getActionNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/upnp/Action;->actionNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method private getServiceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/upnp/Action;->serviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public static isActionNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 137
    const-string v0, "action"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setControlResponse(Lcom/samsung/upnp/control/ControlResponse;)V
    .registers 3
    .parameter "res"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionData()Lcom/samsung/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ActionData;->setControlResponse(Lcom/samsung/upnp/control/ControlResponse;)V

    .line 326
    return-void
.end method


# virtual methods
.method public getActionListener()Lcom/samsung/upnp/control/ActionListener;
    .registers 2

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionData()Lcom/samsung/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ActionData;->getActionListener()Lcom/samsung/upnp/control/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;
    .registers 8
    .parameter "name"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 197
    .local v1, argList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v4

    .line 198
    .local v4, nArgs:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v4, :cond_d

    .line 206
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 199
    :cond_d
    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 200
    .local v0, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, argName:Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 198
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 203
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c
.end method

.method public getArgumentList()Lcom/samsung/upnp/ArgumentList;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/upnp/Action;->argumentList:Lcom/samsung/upnp/ArgumentList;

    return-object v0
.end method

.method public getInputArgumentList()Lcom/samsung/upnp/ArgumentList;
    .registers 7

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 169
    .local v1, allArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v0

    .line 170
    .local v0, allArgCnt:I
    new-instance v3, Lcom/samsung/upnp/ArgumentList;

    invoke-direct {v3}, Lcom/samsung/upnp/ArgumentList;-><init>()V

    .line 171
    .local v3, argList:Lcom/samsung/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_e
    if-lt v4, v0, :cond_11

    .line 177
    return-object v3

    .line 172
    :cond_11
    invoke-virtual {v1, v4}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 173
    .local v2, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->isInDirection()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 171
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 175
    :cond_1e
    invoke-virtual {v3, v2}, Lcom/samsung/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/samsung/upnp/Service;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Lcom/samsung/upnp/Service;

    invoke-direct {p0}, Lcom/samsung/upnp/Action;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;-><init>(Lcom/samsung/xml/Node;)V

    return-object v0
.end method

.method public getStatus()Lcom/samsung/upnp/UPnPStatus;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    return-object v0
.end method

.method public getStatusByString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performActionListener(Lcom/samsung/upnp/control/ActionRequest;)Z
    .registers 7
    .parameter "actionReq"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/upnp/Action;->actionReq:Lcom/samsung/upnp/control/ActionRequest;

    .line 289
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getActionListener()Lcom/samsung/upnp/control/ActionListener;

    move-result-object v1

    .line 290
    .local v1, listener:Lcom/samsung/upnp/control/ActionListener;
    if-nez v1, :cond_a

    .line 291
    const/4 v3, 0x0

    .line 306
    :goto_9
    return v3

    .line 293
    :cond_a
    new-instance v0, Lcom/samsung/upnp/control/ActionResponse;

    invoke-direct {v0}, Lcom/samsung/upnp/control/ActionResponse;-><init>()V

    .line 294
    .local v0, actionRes:Lcom/samsung/upnp/control/ActionResponse;
    const/16 v3, 0x191

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/Action;->setStatus(I)V

    .line 295
    invoke-direct {p0}, Lcom/samsung/upnp/Action;->clearOutputAgumentValues()V

    .line 296
    invoke-interface {v1, p0}, Lcom/samsung/upnp/control/ActionListener;->actionControlReceived(Lcom/samsung/upnp/Action;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 297
    invoke-virtual {v0, p0}, Lcom/samsung/upnp/control/ActionResponse;->setResponse(Lcom/samsung/upnp/Action;)V

    .line 303
    :goto_20
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 304
    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionResponse;->print()V

    .line 305
    :cond_29
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/control/ActionRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    .line 306
    const/4 v3, 0x1

    goto :goto_9

    .line 300
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    .line 301
    .local v2, upnpStatus:Lcom/samsung/upnp/UPnPStatus;
    invoke-virtual {v2}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/upnp/control/ActionResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_20
.end method

.method public postControlAction()Z
    .registers 8

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 345
    .local v0, actionArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {p0}, Lcom/samsung/upnp/Action;->getInputArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 346
    .local v1, actionInputArgList:Lcom/samsung/upnp/ArgumentList;
    new-instance v2, Lcom/samsung/upnp/control/ActionRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/control/ActionRequest;-><init>()V

    .line 347
    .local v2, ctrlReq:Lcom/samsung/upnp/control/ActionRequest;
    invoke-virtual {v2, p0, v1}, Lcom/samsung/upnp/control/ActionRequest;->setRequest(Lcom/samsung/upnp/Action;Lcom/samsung/upnp/ArgumentList;)V

    .line 348
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 349
    invoke-virtual {v2}, Lcom/samsung/upnp/control/ActionRequest;->print()V

    .line 350
    :cond_19
    invoke-virtual {v2}, Lcom/samsung/upnp/control/ActionRequest;->post()Lcom/samsung/upnp/control/ActionResponse;

    move-result-object v3

    .line 351
    .local v3, ctrlRes:Lcom/samsung/upnp/control/ActionResponse;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 352
    invoke-virtual {v3}, Lcom/samsung/upnp/control/ActionResponse;->print()V

    .line 353
    :cond_26
    invoke-direct {p0, v3}, Lcom/samsung/upnp/Action;->setControlResponse(Lcom/samsung/upnp/control/ControlResponse;)V

    .line 355
    invoke-virtual {v3}, Lcom/samsung/upnp/control/ActionResponse;->getStatusCode()I

    move-result v5

    .line 356
    .local v5, statCode:I
    invoke-virtual {p0, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    .line 357
    invoke-virtual {v3}, Lcom/samsung/upnp/control/ActionResponse;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_38

    .line 358
    const/4 v6, 0x0

    .line 361
    :goto_37
    return v6

    .line 359
    :cond_38
    invoke-virtual {v3}, Lcom/samsung/upnp/control/ActionResponse;->getResponse()Lcom/samsung/upnp/ArgumentList;

    move-result-object v4

    .line 360
    .local v4, outArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v0, v4}, Lcom/samsung/upnp/ArgumentList;->set(Lcom/samsung/upnp/ArgumentList;)V

    .line 361
    const/4 v6, 0x1

    goto :goto_37
.end method

.method public setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 217
    .local v0, arg:Lcom/samsung/upnp/Argument;
    if-nez v0, :cond_7

    .line 220
    :goto_6
    return-void

    .line 219
    :cond_7
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setStatus(I)V
    .registers 3
    .parameter "code"

    .prologue
    .line 396
    invoke-static {p1}, Lcom/samsung/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 397
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .registers 4
    .parameter "code"
    .parameter "descr"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/UPnPStatus;->setCode(I)V

    .line 391
    iget-object v0, p0, Lcom/samsung/upnp/Action;->upnpStatus:Lcom/samsung/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lcom/samsung/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 392
    return-void
.end method
