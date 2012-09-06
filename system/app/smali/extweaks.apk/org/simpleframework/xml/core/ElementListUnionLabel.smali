.class Lorg/simpleframework/xml/core/ElementListUnionLabel;
.super Ljava/lang/Object;
.source "ElementListUnionLabel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private expression:Lorg/simpleframework/xml/core/Expression;

.field private extractor:Lorg/simpleframework/xml/core/GroupExtractor;

.field private label:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementListUnion;Lorg/simpleframework/xml/ElementList;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/ElementListLabel;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/ElementListLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementList;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/GroupExtractor;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 80
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 7
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 160
    if-nez v1, :cond_1a

    .line 161
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Union %s was not declared on a field or method"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 163
    :cond_1a
    new-instance v2, Lorg/simpleframework/xml/core/CompositeListUnion;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/simpleframework/xml/core/CompositeListUnion;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_c

    .line 336
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 338
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 2
    .parameter

    .prologue
    .line 143
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

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
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames()Ljava/util/Set;

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
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

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
    .line 188
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths()Ljava/util/Set;

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
    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .parameter

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public isCollection()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
