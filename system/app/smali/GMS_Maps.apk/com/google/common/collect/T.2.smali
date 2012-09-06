.class Lcom/google/common/collect/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lcom/google/common/base/Q;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    .line 105
    iput-object p2, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    .line 106
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/Q;)Lcom/google/common/collect/T;
    .registers 5
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/google/common/collect/T;

    iget-object v1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/Q;Lcom/google/common/base/Q;)Lcom/google/common/base/Q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/T;-><init>(Ljava/util/Collection;Lcom/google/common/base/Q;)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-interface {v0, p1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-interface {v2, v1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/P;->a(Z)V

    goto :goto_4

    .line 125
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Z

    .line 131
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-interface {v1, p1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 150
    :cond_12
    :goto_12
    return v0

    .line 149
    :catch_13
    move-exception v1

    goto :goto_12

    .line 147
    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    invoke-virtual {p0, v1}, Lcom/google/common/collect/T;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/bZ;->c(Ljava/util/Iterator;Lcom/google/common/base/Q;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;Lcom/google/common/base/Q;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-interface {v1, p1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 187
    :cond_12
    :goto_12
    return v0

    .line 186
    :catch_13
    move-exception v1

    goto :goto_12

    .line 184
    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/google/common/collect/U;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U;-><init>(Lcom/google/common/collect/T;Ljava/util/Collection;)V

    .line 200
    iget-object v1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 205
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/google/common/collect/V;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/V;-><init>(Lcom/google/common/collect/T;Ljava/util/Collection;)V

    .line 213
    iget-object v1, p0, Lcom/google/common/collect/T;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/common/collect/T;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/common/collect/T;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/common/collect/T;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/common/collect/T;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
