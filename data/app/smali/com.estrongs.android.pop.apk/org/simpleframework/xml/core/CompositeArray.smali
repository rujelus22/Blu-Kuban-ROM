.class Lorg/simpleframework/xml/core/CompositeArray;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/ArrayFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeArray;->parent:Ljava/lang/String;

    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeArray;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, p1, v1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_13
    invoke-static {p2, p3, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, v1, p2}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v0, v1

    :goto_6
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    if-nez v4, :cond_11

    return-object p2

    :cond_11
    if-lt v0, v2, :cond_25

    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Array length missing or incorrect for %s at %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeArray;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    invoke-direct {p0, v4, p2, v0}, Lorg/simpleframework/xml/core/CompositeArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeArray;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 9

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_b

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    return-void

    :cond_b
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeArray;->parent:Ljava/lang/String;

    invoke-virtual {v4, p1, v2, v3, v5}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
