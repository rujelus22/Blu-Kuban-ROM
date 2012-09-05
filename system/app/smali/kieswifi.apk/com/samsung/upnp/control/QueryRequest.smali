.class public Lcom/samsung/upnp/control/QueryRequest;
.super Lcom/samsung/upnp/control/ControlRequest;
.source "QueryRequest.java"


# direct methods
.method public constructor <init>(Lcom/samsung/http/HTTPRequest;)V
    .registers 2
    .parameter "httpReq"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/upnp/control/ControlRequest;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/control/QueryRequest;->set(Lcom/samsung/http/HTTPRequest;)V

    .line 47
    return-void
.end method

.method private getVarNameNode()Lcom/samsung/xml/Node;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/upnp/control/QueryRequest;->getBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 56
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 65
    :cond_8
    :goto_8
    return-object v2

    .line 58
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 60
    invoke-virtual {v0, v4}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 61
    .local v1, queryStateVarNode:Lcom/samsung/xml/Node;
    if-eqz v1, :cond_8

    .line 63
    invoke-virtual {v1}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 65
    invoke-virtual {v1, v4}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    goto :goto_8
.end method


# virtual methods
.method public getVarName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/upnp/control/QueryRequest;->getVarNameNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 71
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 72
    const-string v1, ""

    .line 73
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method
