.class public Lcom/samsung/upnp/control/ActionResponse;
.super Lcom/samsung/upnp/control/ControlResponse;
.source "ActionResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;-><init>()V

    .line 41
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/control/ActionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/samsung/soap/SOAPResponse;)V
    .registers 4
    .parameter "soapRes"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/upnp/control/ControlResponse;-><init>(Lcom/samsung/soap/SOAPResponse;)V

    .line 47
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/control/ActionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private createResponseNode(Lcom/samsung/upnp/Action;)Lcom/samsung/xml/Node;
    .registers 12
    .parameter "action"

    .prologue
    .line 70
    if-nez p1, :cond_4

    .line 71
    const/4 v1, 0x0

    .line 94
    :cond_3
    return-object v1

    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, actionName:Ljava/lang/String;
    new-instance v1, Lcom/samsung/xml/Node;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "u:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, actionNameResNode:Lcom/samsung/xml/Node;
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getService()Lcom/samsung/upnp/Service;

    move-result-object v7

    .line 76
    .local v7, service:Lcom/samsung/upnp/Service;
    if-eqz v7, :cond_31

    .line 78
    const-string v8, "xmlns:u"

    .line 79
    invoke-virtual {v7}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-virtual {v1, v8, v9}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_31
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v3

    .line 83
    .local v3, argList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v3}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v6

    .line 84
    .local v6, nArgs:I
    const/4 v5, 0x0

    .local v5, n:I
    :goto_3a
    if-ge v5, v6, :cond_3

    .line 85
    invoke-virtual {v3, v5}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 86
    .local v2, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->isOutDirection()Z

    move-result v8

    if-nez v8, :cond_49

    .line 84
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 88
    :cond_49
    new-instance v4, Lcom/samsung/xml/Node;

    invoke-direct {v4}, Lcom/samsung/xml/Node;-><init>()V

    .line 89
    .local v4, argNode:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v4}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    goto :goto_46
.end method

.method private getActionResponseNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionResponse;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 104
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v1

    if-nez v1, :cond_e

    .line 105
    :cond_c
    const/4 v1, 0x0

    .line 106
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_d
.end method


# virtual methods
.method public getResponse()Lcom/samsung/upnp/ArgumentList;
    .registers 9

    .prologue
    .line 112
    new-instance v1, Lcom/samsung/upnp/ArgumentList;

    invoke-direct {v1}, Lcom/samsung/upnp/ArgumentList;-><init>()V

    .line 114
    .local v1, argList:Lcom/samsung/upnp/ArgumentList;
    invoke-direct {p0}, Lcom/samsung/upnp/control/ActionResponse;->getActionResponseNode()Lcom/samsung/xml/Node;

    move-result-object v6

    .line 115
    .local v6, resNode:Lcom/samsung/xml/Node;
    if-nez v6, :cond_c

    .line 127
    :cond_b
    return-object v1

    .line 118
    :cond_c
    invoke-virtual {v6}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 119
    .local v3, nArgs:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_11
    if-ge v2, v3, :cond_b

    .line 120
    invoke-virtual {v6, v2}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 121
    .local v5, node:Lcom/samsung/xml/Node;
    invoke-virtual {v5}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, value:Ljava/lang/String;
    new-instance v0, Lcom/samsung/upnp/Argument;

    invoke-direct {v0, v4, v7}, Lcom/samsung/upnp/Argument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public setResponse(Lcom/samsung/upnp/Action;)V
    .registers 6
    .parameter "action"

    .prologue
    .line 57
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/control/ActionResponse;->setStatusCode(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionResponse;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 60
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, p1}, Lcom/samsung/upnp/control/ActionResponse;->createResponseNode(Lcom/samsung/upnp/Action;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 61
    .local v2, resNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_12

    .line 62
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 64
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionResponse;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 65
    .local v1, envNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/control/ActionResponse;->setContent(Lcom/samsung/xml/Node;)V

    .line 66
    return-void
.end method
