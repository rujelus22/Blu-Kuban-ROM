.class public Lcom/samsung/upnp/control/QueryResponse;
.super Lcom/samsung/upnp/control/ControlResponse;
.source "QueryResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlResponse;-><init>()V

    .line 37
    return-void
.end method

.method private createResponseNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 6
    .parameter "var"

    .prologue
    .line 93
    new-instance v0, Lcom/samsung/xml/Node;

    invoke-direct {v0}, Lcom/samsung/xml/Node;-><init>()V

    .line 94
    .local v0, queryResNode:Lcom/samsung/xml/Node;
    const-string v2, "u"

    const-string v3, "QueryStateVariableResponse"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "u"

    const-string v3, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/samsung/xml/Node;

    invoke-direct {v1}, Lcom/samsung/xml/Node;-><init>()V

    .line 98
    .local v1, returnNode:Lcom/samsung/xml/Node;
    const-string v2, "return"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public setResponse(Lcom/samsung/upnp/StateVariable;)V
    .registers 7
    .parameter "stateVar"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, var:Ljava/lang/String;
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/samsung/upnp/control/QueryResponse;->setStatusCode(I)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/upnp/control/QueryResponse;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 82
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v3}, Lcom/samsung/upnp/control/QueryResponse;->createResponseNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 83
    .local v2, resNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_16

    .line 84
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 86
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/upnp/control/QueryResponse;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 87
    .local v1, envNodee:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/control/QueryResponse;->setContent(Lcom/samsung/xml/Node;)V

    .line 89
    return-void
.end method
