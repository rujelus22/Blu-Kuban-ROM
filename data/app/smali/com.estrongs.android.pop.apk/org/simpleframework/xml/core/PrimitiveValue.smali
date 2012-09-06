.class Lorg/simpleframework/xml/core/PrimitiveValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    if-eqz p2, :cond_c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    :cond_c
    if-nez p1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    :cond_c
    if-nez p1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    goto :goto_f
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    goto :goto_d
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_14

    if-eqz p3, :cond_f

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p1

    :cond_f
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-eqz p2, :cond_17

    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveValue;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_21

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_1b

    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Can not read value of %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1b
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveValue;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_21

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v0

    :goto_20
    return v0

    :cond_21
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v0

    goto :goto_20
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_20

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1f
.end method
