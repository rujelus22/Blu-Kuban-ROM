.class Lorg/simpleframework/xml/core/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/MapFactory;

.field private final key:Lorg/simpleframework/xml/core/Converter;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final value:Lorg/simpleframework/xml/core/Converter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    .line 95
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    .line 96
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    .line 97
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 99
    return-void
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 167
    check-cast p2, Ljava/util/Map;

    .line 170
    :goto_2
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 172
    if-nez v0, :cond_9

    .line 173
    return-object p2

    .line 175
    :cond_9
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 225
    if-nez v1, :cond_9

    .line 226
    const/4 v0, 0x1

    .line 232
    :cond_8
    :goto_8
    return v0

    .line 228
    :cond_9
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 231
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_8
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_14

    .line 119
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    :cond_14
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p2

    .line 149
    :cond_10
    :goto_10
    return-object p2

    .line 144
    :cond_11
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    if-eqz p2, :cond_10

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_10
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_19

    .line 199
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 202
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeMap;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    .line 204
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
    .line 249
    check-cast p2, Ljava/util/Map;

    .line 251
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 255
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v4, v2, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v1, v2, v3}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_a

    .line 260
    :cond_33
    return-void
.end method
