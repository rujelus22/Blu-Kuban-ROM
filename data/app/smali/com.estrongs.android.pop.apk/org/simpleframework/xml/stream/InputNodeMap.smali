.class Lorg/simpleframework/xml/stream/InputNodeMap;
.super Ljava/util/LinkedHashMap;

# interfaces
.implements Lorg/simpleframework/xml/stream/NodeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/stream/InputNode;",
        ">;",
        "Lorg/simpleframework/xml/stream/NodeMap",
        "<",
        "Lorg/simpleframework/xml/stream/InputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/InputNode;


# direct methods
.method protected constructor <init>(Lorg/simpleframework/xml/stream/InputNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/InputNodeMap;->build(Lorg/simpleframework/xml/stream/EventNode;)V

    return-void
.end method

.method private build(Lorg/simpleframework/xml/stream/EventNode;)V
    .registers 6

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/EventNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/Attribute;

    new-instance v2, Lorg/simpleframework/xml/stream/InputAttribute;

    iget-object v3, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-direct {v2, v3, v0}, Lorg/simpleframework/xml/stream/InputAttribute;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/Attribute;)V

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Attribute;->isReserved()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/simpleframework/xml/stream/InputNodeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 3

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/InputNodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/simpleframework/xml/stream/InputNode;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic getNode()Lorg/simpleframework/xml/stream/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputNodeMap;->getNode()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputNodeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/stream/InputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-direct {v0, v1, p1, p2}, Lorg/simpleframework/xml/stream/InputAttribute;-><init>(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/InputNodeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/InputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 3

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/InputNodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method
