.class Lorg/simpleframework/xml/core/GroupExtractor;
.super Ljava/lang/Object;
.source "GroupExtractor.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Group;


# instance fields
.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final factory:Lorg/simpleframework/xml/core/ExtractorFactory;

.field private final label:Ljava/lang/annotation/Annotation;

.field private final registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ExtractorFactory;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    .line 72
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 73
    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;-><init>(Lorg/simpleframework/xml/core/LabelMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    .line 74
    iput-object p2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    .line 75
    invoke-direct {p0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract()V

    .line 76
    return-void
.end method

.method private extract()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ExtractorFactory;->getInstance()Lorg/simpleframework/xml/core/Extractor;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_b

    .line 194
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;)V

    .line 196
    :cond_b
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;)V
    .registers 4
    .parameter

    .prologue
    .line 207
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Extractor;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 210
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V

    goto :goto_8

    .line 212
    :cond_18
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 225
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v1

    .line 226
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    if-eqz v3, :cond_1a

    .line 229
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v3, v2, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->register(Ljava/lang/String;Lorg/simpleframework/xml/core/Label;)V

    .line 230
    iget-object v2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->register(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V

    .line 232
    :cond_1a
    return-void
.end method


# virtual methods
.method public getElements(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public getNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getKeys(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getPaths()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isInline()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 177
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 181
    :goto_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_1a

    :cond_25
    move v0, v1

    goto :goto_1a
.end method

.method public isValid(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
