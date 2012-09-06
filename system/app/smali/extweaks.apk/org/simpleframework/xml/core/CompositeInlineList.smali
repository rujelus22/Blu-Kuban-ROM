.class Lorg/simpleframework/xml/core/CompositeInlineList;
.super Ljava/lang/Object;
.source "CompositeInlineList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final name:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 102
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 103
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 104
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 105
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 195
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Entry %s does not match %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 197
    :cond_2e
    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 163
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_8
    if-eqz p1, :cond_1e

    .line 166
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 167
    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_19

    .line 170
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_19
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    .line 174
    :cond_1e
    return-object p2
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, Ljava/util/Collection;

    .line 123
    if-eqz v0, :cond_f

    .line 124
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 126
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
    .line 141
    check-cast p2, Ljava/util/Collection;

    .line 143
    if-eqz p2, :cond_9

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 6
    .parameter

    .prologue
    .line 212
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 214
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_e
    if-eqz p1, :cond_1f

    .line 217
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v3, p1, v1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v3

    .line 219
    if-nez v3, :cond_1a

    .line 220
    const/4 v0, 0x0

    .line 224
    :goto_19
    return v0

    .line 222
    :cond_1a
    invoke-interface {v0, v2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_e

    .line 224
    :cond_1f
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p2, Ljava/util/Collection;

    .line 240
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 242
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_f

    .line 243
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 245
    :cond_f
    invoke-virtual {p0, v0, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    .line 246
    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_4

    .line 262
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 266
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Entry %s does not match %s for %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 268
    :cond_36
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    invoke-virtual {v3, p1, v1, v2, v4}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_4

    .line 271
    :cond_3e
    return-void
.end method
