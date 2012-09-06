.class Lorg/simpleframework/xml/core/CompositeListUnion;
.super Ljava/lang/Object;
.source "CompositeListUnion.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final group:Lorg/simpleframework/xml/core/Group;

.field private final path:Lorg/simpleframework/xml/core/Expression;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface {p2, p1}, Lorg/simpleframework/xml/core/Group;->getElements(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 85
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->style:Lorg/simpleframework/xml/stream/Style;

    .line 86
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    .line 87
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    .line 88
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 89
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    .line 90
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 214
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 216
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-nez v2, :cond_23

    .line 217
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_23

    .line 221
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setName(Ljava/lang/String;)V

    .line 224
    :cond_23
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/core/Group;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    .line 193
    if-nez v3, :cond_34

    .line 194
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Entry of %s not declared in %s with annotation %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 196
    :cond_34
    invoke-direct {p0, p1, v1, v3}, Lorg/simpleframework/xml/core/CompositeListUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_4

    .line 199
    :cond_38
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 104
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 107
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 128
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 130
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 148
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 150
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p2, Ljava/util/Collection;

    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Group;->isInline()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 167
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 168
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_19

    .line 170
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 175
    :cond_19
    :goto_19
    return-void

    .line 173
    :cond_1a
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeListUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    goto :goto_19
.end method
