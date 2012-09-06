.class public Lorg/simpleframework/xml/convert/RegistryStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final registry:Lorg/simpleframework/xml/convert/Registry;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;)V
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    iput-object p2, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;
    .registers 5

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;
    .registers 5

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Lorg/simpleframework/xml/strategy/Value;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_15

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    :cond_15
    new-instance v0, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v0, p3, v1}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;)V

    move-object p3, v0

    :cond_1b
    return-object p3
.end method

.method private write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz v1, :cond_11

    invoke-interface {v1, v0, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_c
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    :cond_c
    return v0
.end method
