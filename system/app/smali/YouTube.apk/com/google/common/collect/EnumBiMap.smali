.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;

.field private transient valueType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/mv;->a(Ljava/util/Map;)Lcom/google/common/collect/mv;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/google/common/collect/mv;->a(Ljava/util/Map;)Lcom/google/common/collect/mv;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 76
    iput-object p1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 77
    iput-object p2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 78
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/google/common/collect/EnumBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumBiMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferValueType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    .line 69
    invoke-super {v0, p0}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    .line 70
    return-object v0
.end method

.method static inferKeyType(Ljava/util/Map;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 81
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_b

    .line 82
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    .line 88
    :goto_a
    return-object v0

    .line 84
    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_16

    .line 85
    check-cast p0, Lcom/google/common/collect/EnumHashBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumHashBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 87
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 88
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 87
    :cond_33
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static inferValueType(Ljava/util/Map;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 92
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_9

    .line 93
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 96
    :goto_8
    return-object v0

    .line 95
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 96
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8

    .line 95
    :cond_26
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 128
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/mv;->a(Ljava/util/Map;)Lcom/google/common/collect/mv;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/google/common/collect/mv;->a(Ljava/util/Map;)Lcom/google/common/collect/mv;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 131
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 132
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 116
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final bridge synthetic clear()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/bj;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/bj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keyType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final valueType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
