.class Lorg/simpleframework/xml/stream/DocumentReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;


# instance fields
.field private final node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReserved()Z
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_11

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const-string v0, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method
