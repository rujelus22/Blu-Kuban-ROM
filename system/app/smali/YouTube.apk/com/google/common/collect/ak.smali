.class abstract Lcom/google/common/collect/ak;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;


# instance fields
.field private transient elementSet:Ljava/util/Set;

.field private transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 171
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ak;->add(Ljava/lang/Object;I)I

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->e(Ljava/util/Iterator;)V

    .line 130
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ak;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public count(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 70
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    .line 74
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 150
    new-instance v0, Lcom/google/common/collect/al;

    invoke-direct {v0, p0}, Lcom/google/common/collect/al;-><init>(Lcom/google/common/collect/ak;)V

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/common/collect/am;

    invoke-direct {v0, p0}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ak;)V

    return-object v0
.end method

.method abstract distinctElements()I
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/ak;->elementSet:Ljava/util/Set;

    .line 139
    if-nez v0, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->createElementSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ak;->elementSet:Ljava/util/Set;

    .line 142
    :cond_a
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/ak;->entrySet:Ljava/util/Set;

    .line 168
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/ak;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ak;->entrySet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ak;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/iq;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
