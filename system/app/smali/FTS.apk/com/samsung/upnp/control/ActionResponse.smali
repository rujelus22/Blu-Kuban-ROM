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


# virtual methods
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
