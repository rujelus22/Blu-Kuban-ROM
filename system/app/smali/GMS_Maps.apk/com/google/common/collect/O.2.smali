.class abstract Lcom/google/common/collect/O;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cM;


# instance fields
.field private transient a:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/O;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    .line 73
    invoke-interface {v0}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 74
    invoke-interface {v0}, Lcom/google/common/collect/cN;->b()I

    move-result v0

    .line 77
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public a(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract a()Ljava/util/Set;
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/O;->a(Ljava/lang/Object;I)I

    .line 84
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/google/common/collect/cO;->a(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b()Ljava/util/Set;
    .registers 2

    .prologue
    .line 147
    invoke-static {p0}, Lcom/google/common/collect/cO;->a(Lcom/google/common/collect/cM;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/collect/O;->a:Ljava/util/Set;

    .line 136
    if-nez v0, :cond_a

    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/O;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/O;->a:Ljava/util/Set;

    .line 139
    :cond_a
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/common/collect/O;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 127
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/common/collect/O;->a(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/google/common/collect/cO;->a(Lcom/google/common/collect/cM;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/common/collect/O;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/O;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/collect/cO;->b(Lcom/google/common/collect/cM;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/O;->b(Ljava/lang/Object;I)I

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
    .line 118
    invoke-static {p0, p1}, Lcom/google/common/collect/cO;->b(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/cO;->c(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/common/collect/cO;->c(Lcom/google/common/collect/cM;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/common/collect/O;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
