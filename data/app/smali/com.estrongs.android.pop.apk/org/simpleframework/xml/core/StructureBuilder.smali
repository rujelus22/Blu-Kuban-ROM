.class Lorg/simpleframework/xml/core/StructureBuilder;
.super Ljava/lang/Object;


# instance fields
.field private assembler:Lorg/simpleframework/xml/core/ModelAssembler;

.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field private comparer:Lorg/simpleframework/xml/core/Comparer;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private primitive:Z

.field private resolver:Lorg/simpleframework/xml/core/LabelResolver;

.field private root:Lorg/simpleframework/xml/core/Model;

.field private scanner:Lorg/simpleframework/xml/core/Scanner;

.field private text:Lorg/simpleframework/xml/core/Label;

.field private texts:Lorg/simpleframework/xml/core/LabelMap;

.field private type:Ljava/lang/Class;

.field private version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/ExpressionBuilder;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    new-instance v0, Lorg/simpleframework/xml/core/ModelAssembler;

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;-><init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->assembler:Lorg/simpleframework/xml/core/ModelAssembler;

    new-instance v0, Lorg/simpleframework/xml/core/TreeModel;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelResolver;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelResolver;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/LabelResolver;

    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    iput-object p1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    iput-object p2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->type:Ljava/lang/Class;

    return-void
.end method

.method private create(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    :goto_2
    if-nez v0, :cond_5

    :cond_4
    return-object v0

    :cond_5
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v3

    if-eqz v2, :cond_17

    invoke-interface {v0, v2, v1, v3}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    :cond_17
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    goto :goto_2
.end method

.method private extract(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    if-eq v1, v4, :cond_1e

    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Annotation \'%s\' is not a valid union for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/StructureBuilder;->type:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1e
    aget-object v0, v0, v3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private isAttribute(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Model;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isElement(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/StructureBuilder;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    invoke-interface {v3, v4}, Lorg/simpleframework/xml/core/Model;->isElement(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    invoke-interface {v3, v4}, Lorg/simpleframework/xml/core/Model;->isModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3, v4, v2}, Lorg/simpleframework/xml/core/Model;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v0, v1

    goto :goto_1c

    :cond_2f
    move v0, v1

    goto :goto_1c
.end method

.method private isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method private lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Model;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    goto :goto_12
.end method

.method private process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 9

    invoke-static {p1, p2}, Lorg/simpleframework/xml/core/LabelFactory;->getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Duplicate annotation of name \'%s\' on %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->validate(Lorg/simpleframework/xml/core/Label;Ljava/lang/String;)V

    return-void
.end method

.method private process(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 8

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Expression;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/LabelResolver;

    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;)V

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Model;->register(Lorg/simpleframework/xml/core/Label;)V

    invoke-virtual {p3, v2, p2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Model;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->create(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    goto :goto_8
.end method

.method private text(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .registers 8

    invoke-static {p1, p2}, Lorg/simpleframework/xml/core/LabelFactory;->getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v2

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Expression;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/StructureBuilder;->register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    :cond_18
    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v3}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Multiple text annotations in %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/LabelResolver;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;)V

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Model;->register(Lorg/simpleframework/xml/core/Label;)V

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, v3, v1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/StructureBuilder;->extract(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-lt v0, v3, :cond_a

    return-void

    :cond_a
    aget-object v4, v2, v0

    invoke-static {p1, p2, v4}, Lorg/simpleframework/xml/core/LabelFactory;->getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v4

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2e

    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Duplicate annotation of name \'%s\' on %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    invoke-direct {p0, p1, v4, p3}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    invoke-direct {p0, v4, v5}, Lorg/simpleframework/xml/core/StructureBuilder;->validate(Lorg/simpleframework/xml/core/Label;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private validate(Lorg/simpleframework/xml/core/Label;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Creator;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->validate(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    :cond_f
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .registers 11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2a

    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Type does not match %s for \'%s\' in %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    aput-object p2, v3, v6

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2a
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    if-eq v2, v0, :cond_60

    if-eqz v2, :cond_3a

    if-nez v0, :cond_4a

    :cond_3a
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Annotation does not match %s for \'%s\' in %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    aput-object p2, v3, v6

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "Annotation does not match %s for \'%s\' in %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    aput-object p2, v3, v6

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_60
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/StructureBuilder;->validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    return-void
.end method

.method private validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .registers 10

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/StructureBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    new-instance v3, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v4, "Annotation %s does not match %s for \'%s\' in %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object p2, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_39
    return-void
.end method

.method private validateAttributes(Ljava/lang/Class;Lorg/simpleframework/xml/Order;)V
    .registers 9

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-lt v0, v3, :cond_c

    :cond_b
    return-void

    :cond_c
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/StructureBuilder;->isAttribute(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Ordered attribute \'%s\' missing in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Label;",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Initializer;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Lorg/simpleframework/xml/core/Initializer;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()Ljava/util/Collection;

    move-result-object v3

    if-nez v1, :cond_33

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_39

    :cond_33
    :goto_33
    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Initializer;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v1

    if-eqz v1, :cond_2d

    goto :goto_33
.end method

.method private validateConstructors(Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Creator;->getInitializers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Creator;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    :cond_2a
    return-void
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 7

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v2, "Default constructor can not accept read only %s in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/StructureBuilder;->type:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/LabelMap;",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v1, "No constructor accepts all read only values in %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/StructureBuilder;->type:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V

    goto :goto_4

    :cond_2c
    return-void
.end method

.method private validateElements(Ljava/lang/Class;Lorg/simpleframework/xml/Order;)V
    .registers 9

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-lt v0, v3, :cond_c

    :cond_b
    return-void

    :cond_c
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/StructureBuilder;->isElement(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Ordered element \'%s\' missing for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private validateModel(Ljava/lang/Class;)V
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Model;->validate(Ljava/lang/Class;)V

    :cond_d
    return-void
.end method

.method private validateParameters(Lorg/simpleframework/xml/core/Creator;)V
    .registers 7

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Creator;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/LabelResolver;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_8

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v2, "Parameter \'%s\' does not have a match in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/StructureBuilder;->type:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private validateText(Ljava/lang/Class;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Elements used with %s in %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/StructureBuilder;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isComposite()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Paths used with %s in %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/StructureBuilder;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3b
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lorg/simpleframework/xml/core/StructureBuilder;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->primitive:Z

    :cond_49
    return-void
.end method

.method private validateUnions(Ljava/lang/Class;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPaths()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v5

    iget-object v6, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v6, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v6

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v7

    if-eq v6, v7, :cond_52

    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Inline must be consistent in %s for %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v5, v2, v8

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_52
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v6

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v1

    if-eq v6, v1, :cond_22

    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Required must be consistent in %s for %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v5, v2, v8

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private version(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .registers 7

    invoke-static {p1, p2}, Lorg/simpleframework/xml/core/LabelFactory;->getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_16

    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    const-string v1, "Multiple version annotations in %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_16
    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public assemble(Ljava/lang/Class;)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->assembler:Lorg/simpleframework/xml/core/ModelAssembler;

    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    invoke-virtual {v1, v2, v0}, Lorg/simpleframework/xml/core/ModelAssembler;->assemble(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    :cond_f
    return-void
.end method

.method public build(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Structure;
    .registers 7

    new-instance v0, Lorg/simpleframework/xml/core/Structure;

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/Model;

    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    iget-object v3, p0, Lorg/simpleframework/xml/core/StructureBuilder;->text:Lorg/simpleframework/xml/core/Label;

    iget-boolean v4, p0, Lorg/simpleframework/xml/core/StructureBuilder;->primitive:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/xml/core/Structure;-><init>(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Label;Z)V

    return-object v0
.end method

.method public process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .registers 4

    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_9
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_12
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_1b
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_24
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_2d
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_36
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_3f
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_48
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_4f

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/StructureBuilder;->version(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    :cond_4f
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_56

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/StructureBuilder;->text(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    :cond_56
    return-void
.end method

.method public validate(Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateUnions(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateElements(Ljava/lang/Class;Lorg/simpleframework/xml/Order;)V

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateAttributes(Ljava/lang/Class;Lorg/simpleframework/xml/Order;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->validateParameters(Lorg/simpleframework/xml/core/Creator;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateConstructors(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateModel(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->validateText(Ljava/lang/Class;)V

    return-void
.end method
