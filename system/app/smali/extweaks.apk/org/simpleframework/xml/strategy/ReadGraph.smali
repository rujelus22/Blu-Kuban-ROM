.class Lorg/simpleframework/xml/strategy/ReadGraph;
.super Ljava/util/HashMap;
.source "ReadGraph.java"


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    .line 80
    return-void
.end method

.method private readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    .line 217
    const/4 v0, 0x0

    .line 219
    if-eqz v1, :cond_11

    .line 220
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    :cond_11
    new-instance v1, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {v1, p2, v0}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object v1
.end method

.method private readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .line 122
    if-nez v0, :cond_d

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 130
    :goto_c
    return-object v0

    .line 125
    :cond_d
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 128
    new-instance v1, Lorg/simpleframework/xml/strategy/CycleException;

    const-string v2, "Element \'%s\' already exists"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 130
    :cond_25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_c
.end method

.method private readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .line 148
    if-nez v0, :cond_d

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 157
    :goto_c
    return-object v0

    .line 151
    :cond_d
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 155
    new-instance v1, Lorg/simpleframework/xml/strategy/CycleException;

    const-string v2, "Invalid reference \'%s\' found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 157
    :cond_29
    new-instance v0, Lorg/simpleframework/xml/strategy/Reference;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/strategy/Reference;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_c
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 178
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    goto :goto_e
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .line 197
    if-eqz p4, :cond_c

    .line 198
    new-instance v0, Lorg/simpleframework/xml/strategy/Allocate;

    invoke-direct {v0, v1, p0, p4}, Lorg/simpleframework/xml/strategy/Allocate;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V

    .line 200
    :goto_b
    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_b
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    .line 95
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 100
    :cond_14
    if-eqz v1, :cond_20

    .line 101
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    :cond_20
    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    return-object v0
.end method
