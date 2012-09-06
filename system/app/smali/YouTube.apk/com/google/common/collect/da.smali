.class public abstract Lcom/google/common/collect/da;
.super Lcom/google/common/collect/cu;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/cu;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/iq;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 86
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/common/collect/da;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/da;->add(Ljava/lang/Object;I)I

    .line 154
    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 167
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/da;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 127
    :cond_15
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/common/collect/da;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected standardCount(Ljava/lang/Object;)I
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/da;->entrySet()Ljava/util/Set;

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

    .line 138
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    .line 142
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .registers 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/common/collect/da;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 265
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/da;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 192
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardSize()I
    .registers 2

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/iq;)I

    move-result v0

    return v0
.end method

.method protected standardToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/common/collect/da;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
