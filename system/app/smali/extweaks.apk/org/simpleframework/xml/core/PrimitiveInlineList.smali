.class Lorg/simpleframework/xml/core/PrimitiveInlineList;
.super Ljava/lang/Object;
.source "PrimitiveInlineList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 92
    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->parent:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 94
    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 148
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_8
    if-eqz p1, :cond_1a

    .line 151
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_15

    .line 154
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_15
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    .line 158
    :cond_1a
    return-object p2
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/stream/Mode;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    check-cast p2, Ljava/util/Collection;

    .line 220
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->parent:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 224
    invoke-direct {p0, v2, v1}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 225
    invoke-interface {v2, p3}, Lorg/simpleframework/xml/stream/OutputNode;->setMode(Lorg/simpleframework/xml/stream/Mode;)V

    .line 226
    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, v2, v1}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_6

    .line 230
    :cond_27
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Ljava/util/Collection;

    .line 110
    if-eqz v0, :cond_f

    .line 111
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    check-cast p2, Ljava/util/Collection;

    .line 129
    if-eqz p2, :cond_9

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 5
    .parameter

    .prologue
    .line 172
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 173
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_8
    if-eqz p1, :cond_19

    .line 176
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    .line 178
    if-nez v2, :cond_14

    .line 179
    const/4 v0, 0x0

    .line 183
    :goto_13
    return v0

    .line 181
    :cond_14
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    .line 183
    :cond_19
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 198
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    .line 200
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_11

    .line 201
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 203
    :cond_11
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/stream/Mode;)V

    .line 204
    return-void
.end method
