.class public Lorg/simpleframework/xml/strategy/TreeStrategy;
.super Ljava/lang/Object;
.source "TreeStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "class"

    const-string v1, "length"

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/Loader;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    .line 82
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    .line 130
    const/4 v0, 0x0

    .line 132
    if-eqz v1, :cond_11

    .line 133
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    :cond_11
    new-instance v1, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object v1
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    .line 156
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 161
    :cond_14
    if-eqz v1, :cond_20

    .line 162
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    :cond_20
    return-object v0
.end method

.method private writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 210
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 211
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 213
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 106
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 111
    :goto_12
    return-object v0

    .line 108
    :cond_13
    if-eq v0, v1, :cond_1b

    .line 109
    new-instance v0, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    goto :goto_12

    .line 111
    :cond_1b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 184
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 188
    invoke-direct {p0, v2, p2, p3}, Lorg/simpleframework/xml/strategy/TreeStrategy;->writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v0

    .line 190
    :goto_12
    if-eq v1, v2, :cond_1d

    .line 191
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 193
    :cond_1d
    const/4 v0, 0x0

    return v0

    :cond_1f
    move-object v0, v1

    goto :goto_12
.end method
