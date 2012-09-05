.class public Lcom/samsung/upnp/control/ActionRequest;
.super Lcom/samsung/upnp/control/ControlRequest;
.source "ActionRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlRequest;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPRequest;)V
    .registers 2
    .parameter "httpReq"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlRequest;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/control/ActionRequest;->set(Lcom/samsung/http/HTTPRequest;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionRequest;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v2

    .line 65
    .local v2, node:Lcom/samsung/xml/Node;
    if-nez v2, :cond_9

    .line 66
    const-string v3, ""

    .line 73
    :goto_8
    return-object v3

    .line 67
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 69
    const-string v3, ""

    goto :goto_8

    .line 70
    :cond_12
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 71
    .local v0, idx:I
    if-gez v0, :cond_1f

    .line 72
    const-string v3, ""

    goto :goto_8

    .line 73
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public getActionNode()Lcom/samsung/xml/Node;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionRequest;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 55
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 59
    :cond_7
    :goto_7
    return-object v1

    .line 57
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method

.method public getArgumentList()Lcom/samsung/upnp/ArgumentList;
    .registers 8

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/upnp/control/ActionRequest;->getActionNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 80
    .local v0, actNode:Lcom/samsung/xml/Node;
    const/4 v5, 0x0

    .line 81
    .local v5, nArgNodes:I
    if-eqz v0, :cond_b

    .line 82
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v5

    .line 84
    :cond_b
    new-instance v2, Lcom/samsung/upnp/ArgumentList;

    invoke-direct {v2}, Lcom/samsung/upnp/ArgumentList;-><init>()V

    .line 85
    .local v2, argList:Lcom/samsung/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_11
    if-lt v4, v5, :cond_14

    .line 92
    return-object v2

    .line 86
    :cond_14
    new-instance v1, Lcom/samsung/upnp/Argument;

    invoke-direct {v1}, Lcom/samsung/upnp/Argument;-><init>()V

    .line 87
    .local v1, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v0, v4}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v3

    .line 88
    .local v3, argNode:Lcom/samsung/xml/Node;
    invoke-virtual {v3}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_11
.end method
