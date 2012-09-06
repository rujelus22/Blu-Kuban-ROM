.class Lorg/simpleframework/xml/core/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final criteria:Lorg/simpleframework/xml/core/Criteria;

.field private final factory:Lorg/simpleframework/xml/core/ObjectFactory;

.field private final primitive:Lorg/simpleframework/xml/core/Primitive;

.field private final revision:Lorg/simpleframework/xml/core/Revision;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/ObjectFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    .line 118
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    .line 119
    new-instance v0, Lorg/simpleframework/xml/core/Collector;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Collector;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    .line 120
    new-instance v0, Lorg/simpleframework/xml/core/Revision;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Revision;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    .line 121
    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    .line 122
    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 123
    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1387
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p3, p2, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 202
    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 206
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Schema;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Creator;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readDefault(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_e
    return-object v0

    .line 234
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readConstructor(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 367
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 368
    return-void
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {p4, v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 550
    if-nez v1, :cond_3e

    .line 551
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 552
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 554
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 555
    new-instance v3, Lorg/simpleframework/xml/core/AttributeException;

    const-string v4, "Attribute \'%s\' does not have a match in %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 558
    :cond_3e
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    .line 560
    :cond_41
    return-void
.end method

.method private readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 468
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 470
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_c

    .line 474
    invoke-direct {p0, v0, p2, p3, v1}, Lorg/simpleframework/xml/core/Composite;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_c

    .line 477
    :cond_22
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method private readConstructor(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Schema;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v1, v2}, Lorg/simpleframework/xml/core/Creator;->getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    if-eqz p3, :cond_16

    .line 291
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 294
    :cond_16
    return-object v0
.end method

.method private readDefault(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 260
    if-eqz p3, :cond_11

    .line 261
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 263
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 265
    :cond_11
    return-object v0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {p4, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 580
    if-nez v0, :cond_14

    .line 581
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    .line 583
    :cond_14
    if-nez v0, :cond_4a

    .line 584
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 588
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string v4, "Element \'%s\' does not have a match in %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 590
    :cond_46
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    .line 595
    :goto_49
    return-void

    .line 593
    :cond_4a
    invoke-direct {p0, p1, p2, p4, v0}, Lorg/simpleframework/xml/core/Composite;->readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_49
.end method

.method private readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 497
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 499
    :goto_8
    if-eqz v0, :cond_20

    .line 500
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_1c

    .line 504
    invoke-direct {p0, v0, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 508
    :goto_17
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_8

    .line 506
    :cond_1c
    invoke-direct {p0, v0, p2, p3, v1}, Lorg/simpleframework/xml/core/Composite;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_17

    .line 510
    :cond_20
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 511
    return-void
.end method

.method private readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    .line 637
    if-nez v0, :cond_34

    .line 638
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 641
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 642
    new-instance v0, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string v3, "Empty value for %s in %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 645
    :cond_34
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_41

    .line 646
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p3, v0}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 649
    :cond_41
    return-object v0
.end method

.method private readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 313
    if-eqz v0, :cond_f

    .line 314
    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_f
    return-object v1
.end method

.method private readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    if-eqz p2, :cond_2e

    .line 335
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 336
    invoke-virtual {p3, p2}, Lorg/simpleframework/xml/core/Caller;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 337
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 341
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string v4, "Type %s does not match %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 345
    :cond_2e
    return-object p2
.end method

.method private readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 389
    return-void
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_9

    .line 528
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    .line 530
    :cond_9
    return-void
.end method

.method private readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-direct {p0, p1, p2, p4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v1

    .line 611
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p4, v0}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    invoke-virtual {p3, v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 616
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 617
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v0, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_e

    .line 620
    :cond_2a
    return-void
.end method

.method private readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 670
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    .line 671
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 673
    if-eqz v1, :cond_27

    .line 674
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 676
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    :goto_26
    return-object v0

    .line 678
    :cond_27
    if-eqz p2, :cond_34

    .line 679
    invoke-interface {v2, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 681
    if-eqz v1, :cond_34

    .line 682
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26

    .line 687
    :cond_34
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 441
    if-eqz v0, :cond_27

    .line 442
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v1

    .line 443
    invoke-interface {v1}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 446
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 449
    :cond_27
    return-void
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 405
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 407
    if-eqz v1, :cond_1f

    .line 408
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v3

    .line 410
    invoke-interface {v3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    .line 412
    if-eqz v0, :cond_20

    .line 413
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 423
    :cond_1f
    :goto_1f
    return-void

    .line 415
    :cond_20
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v2}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v0

    .line 416
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 417
    invoke-interface {v0}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 419
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v1, v2}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 420
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v1, v0, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 964
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 965
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 966
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 967
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    .line 969
    if-nez v0, :cond_2a

    .line 970
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v3, "Invalid value for %s in %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 972
    :cond_2a
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 973
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 987
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 989
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 990
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 992
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 993
    new-instance v2, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string v4, "Unable to satisfy %s for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-direct {v2, v4, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 996
    :cond_3c
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0, v1, p3}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 704
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v2

    .line 706
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 707
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 708
    new-instance v3, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string v4, "Unable to satisfy %s for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 710
    :cond_3e
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v4}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 712
    if-eqz v4, :cond_10

    .line 713
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v0, v4}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_10

    .line 716
    :cond_4c
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 760
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 761
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v1

    .line 763
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V

    .line 764
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 766
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    return v0
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 879
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 883
    if-nez v2, :cond_3c

    .line 884
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 886
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 887
    new-instance v3, Lorg/simpleframework/xml/core/AttributeException;

    const-string v4, "Attribute \'%s\' does not exist for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 890
    :cond_3c
    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    .line 892
    :cond_3f
    return-void
.end method

.method private validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 804
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 806
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_c

    .line 810
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_c

    .line 813
    :cond_22
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 814
    return-void
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 910
    if-nez v0, :cond_14

    .line 911
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    .line 913
    :cond_14
    if-nez v0, :cond_48

    .line 914
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 915
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 917
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 918
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string v4, "Element \'%s\' does not exist for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 920
    :cond_44
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    .line 925
    :goto_47
    return-void

    .line 923
    :cond_48
    invoke-direct {p0, p1, p3, v0}, Lorg/simpleframework/xml/core/Composite;->validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_47
.end method

.method private validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 832
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 834
    :goto_8
    if-eqz v0, :cond_20

    .line 835
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-interface {p2, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 838
    if-eqz v2, :cond_1c

    .line 839
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 843
    :goto_17
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_8

    .line 841
    :cond_1c
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_17

    .line 845
    :cond_20
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 846
    return-void
.end method

.method private validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 784
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 785
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 786
    return-void
.end method

.method private validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 859
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Schema;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_9

    .line 862
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    .line 864
    :cond_9
    return-void
.end method

.method private validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 939
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 941
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 942
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_a

    .line 945
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 946
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_a

    .line 950
    :cond_29
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    .line 951
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1039
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 1041
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 1042
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1043
    return-void
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    if-eqz p2, :cond_19

    .line 1272
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    invoke-interface {p1, v1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    .line 1277
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 1279
    :cond_19
    return-void
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1118
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 1121
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 1122
    invoke-interface {v1, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1123
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3, v4, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .line 1125
    if-nez v1, :cond_2c

    .line 1126
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 1128
    :cond_2c
    if-nez v1, :cond_45

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1129
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Value for %s is null in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-direct {v1, v2, v4}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1131
    :cond_45
    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_8

    .line 1133
    :cond_49
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1331
    invoke-interface {p3, p1, p2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 1332
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1299
    if-eqz p2, :cond_3d

    .line 1300
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1301
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1302
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v2}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1303
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 1304
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 1306
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1307
    invoke-direct {p0, v2, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V

    .line 1309
    :cond_21
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-direct {p0, v2, p2, v0}, Lorg/simpleframework/xml/core/Composite;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1310
    :cond_2d
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 1311
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    .line 1313
    invoke-interface {v2, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1314
    invoke-direct {p0, v2, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V

    .line 1317
    :cond_3d
    return-void
.end method

.method private writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1148
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1149
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 1151
    if-eqz v2, :cond_1e

    .line 1152
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 1154
    invoke-direct {p0, v0, p2, v2}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_4

    .line 1156
    :cond_1e
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    .line 1158
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4, v5, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    .line 1159
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v2}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    .line 1161
    if-nez v2, :cond_4

    .line 1162
    if-nez v3, :cond_49

    .line 1163
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Element \'%s\' not defined in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1165
    :cond_49
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/simpleframework/xml/core/Composite;->writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_4

    .line 1169
    :cond_4d
    return-void
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1346
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1348
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v1

    .line 1350
    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    .line 1351
    return-void
.end method

.method private writeReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1220
    if-eqz p1, :cond_10

    .line 1221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1222
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    .line 1224
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Caller;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1226
    :cond_10
    return-object p1
.end method

.method private writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1058
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 1059
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1061
    if-eqz v1, :cond_26

    .line 1062
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_23

    .line 1065
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Namespace prefix \'%s\' in %s is not in scope"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1067
    :cond_23
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    .line 1070
    :cond_26
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1071
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1072
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1073
    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    if-eqz p2, :cond_12

    .line 1366
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    .line 1369
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1370
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    .line 1372
    :cond_12
    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1242
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1244
    if-eqz v1, :cond_3a

    .line 1245
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1246
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1247
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 1249
    if-nez v0, :cond_1e

    .line 1250
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 1252
    :cond_1e
    if-nez v0, :cond_37

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1253
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v3, "Value for %s is null in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1255
    :cond_37
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1257
    :cond_3a
    return-void
.end method

.method private writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1185
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1, v2, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1188
    if-nez v0, :cond_29

    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1189
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Value for %s is null in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1191
    :cond_29
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Composite;->writeReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1193
    if-eqz v1, :cond_32

    .line 1194
    invoke-direct {p0, p1, v1, p4}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1196
    :cond_32
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p4, v0}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 1198
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1199
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 1201
    if-eqz v0, :cond_3c

    .line 1202
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v0, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_3c

    .line 1205
    :cond_54
    return-void
.end method

.method private writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    .line 1089
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1091
    if-eqz v0, :cond_2d

    .line 1092
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1093
    invoke-interface {v0}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1095
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3, v0, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1096
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1097
    :cond_2a
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1103
    :cond_2d
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 145
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 150
    :goto_14
    return-object v0

    .line 147
    :cond_15
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 148
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 150
    :cond_22
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 736
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_19

    .line 737
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 740
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    .line 742
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1010
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 1012
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 1015
    :try_start_e
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1016
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_24

    .line 1022
    :goto_19
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    .line 1023
    return-void

    .line 1018
    :cond_1d
    :try_start_1d
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->persist(Ljava/lang/Object;)V

    .line 1019
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    goto :goto_19

    .line 1022
    :catchall_24
    move-exception v0

    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    throw v0
.end method
