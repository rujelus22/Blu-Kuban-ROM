.class Lorg/simpleframework/xml/core/CollectionFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "CollectionFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 52
    return-void
.end method

.method private isCollection(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 158
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getConversion(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .parameter

    .prologue
    .line 136
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 137
    const-class v0, Ljava/util/ArrayList;

    .line 143
    :goto_a
    return-object v0

    .line 139
    :cond_b
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 140
    const-class v0, Ljava/util/HashSet;

    goto :goto_a

    .line 142
    :cond_16
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 143
    const-class v0, Ljava/util/TreeSet;

    goto :goto_a

    .line 145
    :cond_21
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v1, "Cannot instantiate %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstance()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/CollectionFactory;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 68
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    :goto_e
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 71
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 73
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2c
    move-object v0, v1

    goto :goto_e
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .registers 7
    .parameter

    .prologue
    .line 113
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 116
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    :cond_e
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 119
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 121
    :cond_27
    new-instance v1, Lorg/simpleframework/xml/core/ConversionInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/CollectionFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/xml/core/ConversionInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .registers 7
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/CollectionFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 90
    if-eqz v1, :cond_f

    .line 91
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 99
    :goto_e
    return-object v0

    .line 93
    :cond_f
    invoke-static {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 94
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    :cond_19
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 97
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 99
    :cond_32
    iget-object v1, p0, Lorg/simpleframework/xml/core/CollectionFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    goto :goto_e
.end method
