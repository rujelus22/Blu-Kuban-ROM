.class Lorg/simpleframework/xml/core/CompositeList;
.super Ljava/lang/Object;
.source "CompositeList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


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
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 98
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 99
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 100
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeList;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 101
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeList;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 166
    check-cast p2, Ljava/util/Collection;

    .line 169
    :goto_2
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 172
    if-nez v0, :cond_f

    .line 173
    return-object p2

    .line 175
    :cond_f
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 216
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 219
    if-nez v0, :cond_e

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_e
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_14

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    :cond_14
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 143
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p2

    .line 150
    :cond_10
    :goto_10
    return-object p2

    .line 145
    :cond_11
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    if-eqz p2, :cond_10

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_10
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_19

    .line 194
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 197
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeList;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    .line 199
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 238
    check-cast p2, Ljava/util/Collection;

    .line 240
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_6

    .line 242
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 246
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Entry %s does not match %s for %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeList;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 248
    :cond_3a
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeList;->name:Ljava/lang/String;

    invoke-virtual {v3, p1, v1, v2, v4}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_6

    .line 251
    :cond_42
    return-void
.end method
