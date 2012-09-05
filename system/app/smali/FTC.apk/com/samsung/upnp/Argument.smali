.class public Lcom/samsung/upnp/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field private argumentNode:Lcom/samsung/xml/Node;

.field private serviceNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/samsung/xml/Node;

    invoke-direct {v0}, Lcom/samsung/xml/Node;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    .line 110
    iget-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/Argument;->serviceNode:Lcom/samsung/xml/Node;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 10
    .parameter "argNode"
    .parameter "servNode"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/samsung/upnp/Argument;->serviceNode:Lcom/samsung/xml/Node;

    .line 125
    const-string v6, "name"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v2

    .line 128
    .local v2, node:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/upnp/xml/ArgumentData;

    .line 130
    .local v4, userData:Lcom/samsung/upnp/xml/ArgumentData;
    if-nez v4, :cond_22

    .line 131
    new-instance v4, Lcom/samsung/upnp/xml/ArgumentData;

    .end local v4           #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-direct {v4}, Lcom/samsung/upnp/xml/ArgumentData;-><init>()V

    .line 132
    .restart local v4       #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/xml/ArgumentData;->setNode(Lcom/samsung/xml/Node;)V

    .line 135
    :cond_22
    invoke-virtual {v4}, Lcom/samsung/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, value:Ljava/lang/String;
    const-string v6, "direction"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, direction:Ljava/lang/String;
    const-string v6, "relatedStateVariable"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, related:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Argument;->setDirection(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/Argument;->setRelatedStateVariableName(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 232
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ArgumentData;

    .line 233
    .local v1, userData:Lcom/samsung/upnp/xml/ArgumentData;
    if-nez v1, :cond_17

    .line 234
    new-instance v1, Lcom/samsung/upnp/xml/ArgumentData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ArgumentData;-><init>()V

    .line 235
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ArgumentData;->setNode(Lcom/samsung/xml/Node;)V

    .line 238
    :cond_17
    return-object v1
.end method

.method private getArgumentNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public static isArgumentNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 152
    const-string v0, "argument"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInDirection()Z
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, dir:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 191
    const/4 v1, 0x0

    .line 192
    :goto_7
    return v1

    :cond_8
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public isOutDirection()Z
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->isInDirection()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDirection(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setRelatedStateVariableName(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ArgumentData;->setValue(Ljava/lang/String;)V

    .line 248
    return-void
.end method
