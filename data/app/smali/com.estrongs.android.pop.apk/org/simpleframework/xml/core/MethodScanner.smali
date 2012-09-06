.class Lorg/simpleframework/xml/core/MethodScanner;
.super Lorg/simpleframework/xml/core/ContactList;


# instance fields
.field private final access:Lorg/simpleframework/xml/DefaultType;

.field private final factory:Lorg/simpleframework/xml/core/MethodPartFactory;

.field private final hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

.field private final read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

.field private final type:Ljava/lang/Class;

.field private final write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/MethodPartFactory;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Hierarchy;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Hierarchy;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodScanner;->access:Lorg/simpleframework/xml/DefaultType;

    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private build()V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_6

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;)V
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;)V

    goto :goto_b
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v2, "Annotations do not match for \'%s\' in %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_3d

    new-instance v2, Lorg/simpleframework/xml/core/MethodException;

    const-string v3, "Method types do not match for %s in %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_3d
    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private process(Ljava/lang/reflect/Method;)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_25
    return-void
.end method

.method private process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_25
    return-void
.end method

.method private process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .registers 4

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method private remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    :cond_25
    return-void
.end method

.method private remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .registers 4

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->build()V

    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->validate()V

    return-void

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->access:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_6

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_12
.end method

.method private scan(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/reflect/Method;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    if-ne p2, v0, :cond_c

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_d

    :cond_c
    return-void

    :cond_d
    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private scan(Ljava/lang/reflect/Method;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    aget-object v3, v1, v0

    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 4

    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_e
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_15
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_1c
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_23

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_23
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_2a
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_31

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_31
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_38

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_38
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_3f
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_46

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_46
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_4d

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    :cond_4d
    return-void
.end method

.method private validate()V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_6

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_1f

    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v2, "No matching get method for %s in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1f
    return-void
.end method
