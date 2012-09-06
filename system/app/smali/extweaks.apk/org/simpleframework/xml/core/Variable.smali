.class Lorg/simpleframework/xml/core/Variable;
.super Ljava/lang/Object;
.source "Variable.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    .line 64
    iput-object p2, p0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 5
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 187
    instance-of v1, v0, Lorg/simpleframework/xml/core/Variable$Adapter;

    if-eqz v1, :cond_b

    .line 190
    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Lorg/simpleframework/xml/core/Variable$Adapter;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, v2}, Lorg/simpleframework/xml/core/Variable$Adapter;-><init>(Lorg/simpleframework/xml/core/Variable;Lorg/simpleframework/xml/core/Converter;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 2
    .parameter

    .prologue
    .line 78
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPaths()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public isCollection()Z
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isUnion()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
