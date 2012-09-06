.class Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.super Lcom/google/common/collect/da;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/iq;

.field transient elementSet:Ljava/util/Set;

.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iq;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/common/collect/da;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/iq;

    .line 98
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/iq;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    .line 115
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->createElementSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    .line 123
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    :cond_10
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
