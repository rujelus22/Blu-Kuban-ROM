.class abstract Lcom/google/common/collect/ao;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fj;


# instance fields
.field private transient elementSet:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 224
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ao;->add(Ljava/lang/Object;I)I

    .line 133
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 163
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    const/4 v0, 0x0

    .line 175
    :goto_7
    return v0

    .line 166
    :cond_8
    instance-of v0, p1, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_2e

    .line 168
    check-cast p1, Lcom/google/common/collect/fj;

    .line 169
    invoke-interface {p1}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 170
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ao;->add(Ljava/lang/Object;I)I

    goto :goto_16

    .line 173
    :cond_2e
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_31
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 202
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 122
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 123
    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    .line 126
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 221
    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/ao;)V

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/collect/ao;->elementSet:Ljava/util/Set;

    .line 210
    if-nez v0, :cond_a

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->createElementSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ao;->elementSet:Ljava/util/Set;

    .line 213
    :cond_a
    return-object v0
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 275
    :goto_5
    return v0

    .line 257
    :cond_6
    instance-of v0, p1, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_3e

    .line 258
    check-cast p1, Lcom/google/common/collect/fj;

    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/fj;->size()I

    move-result v3

    if-eq v0, v3, :cond_18

    move v0, v2

    .line 266
    goto :goto_5

    .line 268
    :cond_18
    invoke-interface {p1}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 269
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ao;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    if-eq v4, v0, :cond_20

    move v0, v2

    .line 270
    goto :goto_5

    :cond_3c
    move v0, v1

    .line 273
    goto :goto_5

    :cond_3e
    move v0, v2

    .line 275
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/ar;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ar;-><init>(Lcom/google/common/collect/ao;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ao;->remove(Ljava/lang/Object;I)I

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
    .line 179
    instance-of v0, p1, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/fj;

    invoke-interface {p1}, Lcom/google/common/collect/fj;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 182
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 187
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 192
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 194
    const/4 v0, 0x1

    :goto_27
    move v1, v0

    .line 196
    goto :goto_d

    .line 197
    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/fj;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/fj;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 7

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 60
    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_b

    .line 62
    :cond_20
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
