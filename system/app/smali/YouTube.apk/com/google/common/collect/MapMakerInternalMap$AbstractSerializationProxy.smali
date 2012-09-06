.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.super Lcom/google/common/collect/cv;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Ljava/util/concurrent/ConcurrentMap;

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/fr;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/fr;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3967
    invoke-direct {p0}, Lcom/google/common/collect/cv;-><init>()V

    .line 3968
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 3969
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 3970
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3971
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 3972
    iput-wide p5, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    .line 3973
    iput-wide p7, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    .line 3974
    iput p9, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    .line 3975
    iput p10, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 3976
    iput-object p11, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/fr;

    .line 3977
    iput-object p12, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 3978
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/ConcurrentMap;
    .registers 2

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readEntries(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 4020
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 4021
    if-eqz v0, :cond_10

    .line 4022
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 4025
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4027
    :cond_10
    return-void
.end method

.method readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;
    .registers 13
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 3997
    new-instance v4, Lcom/google/common/collect/MapMaker;

    invoke-direct {v4}, Lcom/google/common/collect/MapMaker;-><init>()V

    iget v0, v4, Lcom/google/common/collect/MapMaker;->c:I

    if-ne v0, v8, :cond_103

    move v0, v1

    :goto_13
    const-string v5, "initial capacity was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v4, Lcom/google/common/collect/MapMaker;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v3, :cond_106

    move v0, v1

    :goto_25
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    iput v3, v4, Lcom/google/common/collect/MapMaker;->c:I

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v4, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, v3, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_109

    move v0, v1

    :goto_37
    const-string v5, "Value strength was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, v3, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v4, v0, :cond_50

    iput-boolean v1, v3, Lcom/google/common/collect/MapMaker;->b:Z

    :cond_50
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v0, v3, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_10c

    move v0, v1

    :goto_57
    const-string v5, "key equivalence was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, v3, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    iput-boolean v1, v3, Lcom/google/common/collect/MapMaker;->b:Z

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v0, v3, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_10f

    move v0, v1

    :goto_73
    const-string v5, "value equivalence was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/Equivalence;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, v3, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/Equivalence;

    iput-boolean v1, v3, Lcom/google/common/collect/MapMaker;->b:Z

    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    iget v0, v3, Lcom/google/common/collect/MapMaker;->d:I

    if-ne v0, v8, :cond_112

    move v0, v1

    :goto_8f
    const-string v5, "concurrency level was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v3, Lcom/google/common/collect/MapMaker;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez v4, :cond_115

    move v0, v1

    :goto_a1
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    iput v4, v3, Lcom/google/common/collect/MapMaker;->d:I

    .line 4004
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/fr;

    iget-object v0, v3, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/fr;

    if-nez v0, :cond_117

    move v0, v1

    :goto_ad
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    invoke-static {v4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fr;

    iput-object v0, v3, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/fr;

    iput-boolean v1, v3, Lcom/google/common/collect/MapMaker;->b:Z

    .line 4005
    iget-wide v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_c7

    .line 4006
    iget-wide v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 4008
    :cond_c7
    iget-wide v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_d4

    .line 4009
    iget-wide v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 4011
    :cond_d4
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    if-eq v0, v8, :cond_102

    .line 4012
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    iget v0, v3, Lcom/google/common/collect/MapMaker;->e:I

    if-ne v0, v8, :cond_119

    move v0, v1

    :goto_df
    const-string v5, "maximum size was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v3, Lcom/google/common/collect/MapMaker;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v4, :cond_f1

    move v2, v1

    :cond_f1
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    iput v4, v3, Lcom/google/common/collect/MapMaker;->e:I

    iput-boolean v1, v3, Lcom/google/common/collect/MapMaker;->b:Z

    iget v0, v3, Lcom/google/common/collect/MapMaker;->e:I

    if-nez v0, :cond_102

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, v3, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 4014
    :cond_102
    return-object v3

    :cond_103
    move v0, v2

    .line 3997
    goto/16 :goto_13

    :cond_106
    move v0, v2

    goto/16 :goto_25

    :cond_109
    move v0, v2

    goto/16 :goto_37

    :cond_10c
    move v0, v2

    goto/16 :goto_57

    :cond_10f
    move v0, v2

    goto/16 :goto_73

    :cond_112
    move v0, v2

    goto/16 :goto_8f

    :cond_115
    move v0, v2

    goto :goto_a1

    :cond_117
    move v0, v2

    .line 4004
    goto :goto_ad

    :cond_119
    move v0, v2

    .line 4012
    goto :goto_df
.end method

.method writeMapTo(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3987
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3988
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3989
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_13

    .line 3991
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3992
    return-void
.end method
