.class abstract Lcom/google/common/collect/AbstractBiMap;
.super Lcom/google/common/collect/cx;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bj;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient delegate:Ljava/util/Map;

.field private transient entrySet:Ljava/util/Set;

.field private transient inverse:Lcom/google/common/collect/AbstractBiMap;

.field private transient keySet:Ljava/util/Set;

.field private transient valueSet:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/common/collect/cx;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/cx;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 106
    if-eqz v3, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 116
    :goto_12
    return-object p2

    .line 109
    :cond_13
    if-eqz p3, :cond_27

    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/bj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_1c
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    .line 116
    goto :goto_12

    .line 112
    :cond_27
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    :goto_2e
    const-string v4, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_38
    move v0, v2

    goto :goto_2e
.end method

.method private removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 134
    return-object v0
.end method

.method private removeFromInverseMap(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method private updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    if-eqz p2, :cond_5

    .line 122
    invoke-direct {p0, p3}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    .line 273
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/b;-><init>(Lcom/google/common/collect/AbstractBiMap;B)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/bj;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    .line 165
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/AbstractBiMap;B)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 147
    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method setDelegates(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    if-nez v0, :cond_30

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 75
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    if-nez v0, :cond_32

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 78
    if-eq p1, p2, :cond_34

    :goto_22
    invoke-static {v1}, Lcom/google/common/base/ag;->a(Z)V

    .line 79
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/google/common/collect/AbstractBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/a;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 81
    return-void

    :cond_30
    move v0, v2

    .line 74
    goto :goto_7

    :cond_32
    move v0, v2

    .line 75
    goto :goto_f

    :cond_34
    move v1, v2

    .line 78
    goto :goto_22
.end method

.method setInverse(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 85
    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    .line 226
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/AbstractBiMap;B)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method
