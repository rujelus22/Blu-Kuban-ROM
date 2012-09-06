.class final Lcom/google/common/collect/dk;
.super Lcom/google/common/collect/bR;
.source "SourceFile"


# instance fields
.field private final transient b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/google/common/collect/bR;-><init>(Ljava/util/Comparator;)V

    .line 48
    iput-object p1, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    .line 49
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 50
    return-void

    .line 49
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(II)Lcom/google/common/collect/bR;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 211
    if-ge p1, p2, :cond_10

    .line 212
    new-instance v0, Lcom/google/common/collect/dk;

    iget-object v1, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/dk;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 215
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/dk;->a(Ljava/util/Comparator;)Lcom/google/common/collect/bR;

    move-result-object v0

    goto :goto_f
.end method

.method private g(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Ljava/util/Comparator;

    .line 132
    iget-object v1, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->g(Ljava/lang/Object;)I

    move-result v0

    .line 207
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 4
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->h(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/dk;->a(II)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/dk;->h(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/dk;->a(II)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 4
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/dk;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/dk;->a(II)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 220
    if-nez p1, :cond_4

    .line 234
    :goto_3
    return v1

    .line 225
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->g(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_1a

    move-result v0

    .line 234
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_16
    move v1, v0

    goto :goto_3

    :cond_18
    move v0, v1

    goto :goto_16

    .line 226
    :catch_1a
    move-exception v0

    goto :goto_3
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_4

    .line 72
    :cond_3
    :goto_3
    return v0

    .line 70
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/dk;->g(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 71
    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/dk;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/dk;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_17

    .line 82
    :cond_12
    invoke-super {p0, p1}, Lcom/google/common/collect/bR;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 118
    :goto_16
    return v0

    .line 89
    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/dk;->b()Lcom/google/common/collect/dE;

    move-result-object v3

    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 95
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/google/common/collect/dk;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 99
    if-nez v5, :cond_40

    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    .line 103
    goto :goto_16

    .line 106
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_3e} :catch_44
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_3e} :catch_47

    move-result-object v0

    goto :goto_23

    .line 108
    :cond_40
    if-lez v5, :cond_23

    move v0, v2

    .line 109
    goto :goto_16

    .line 112
    :catch_44
    move-exception v0

    move v0, v2

    .line 113
    goto :goto_16

    .line 114
    :catch_47
    move-exception v0

    move v0, v2

    .line 115
    goto :goto_16

    :cond_4a
    move v0, v2

    .line 118
    goto :goto_16
.end method

.method e()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/collect/bJ;

    iget-object v1, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bJ;-><init>(Lcom/google/common/collect/bR;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    if-ne p1, p0, :cond_5

    .line 179
    :cond_4
    :goto_4
    return v0

    .line 151
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_b

    move v0, v1

    .line 152
    goto :goto_4

    .line 155
    :cond_b
    check-cast p1, Ljava/util/Set;

    .line 156
    invoke-virtual {p0}, Lcom/google/common/collect/dk;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 157
    goto :goto_4

    .line 160
    :cond_19
    iget-object v2, p0, Lcom/google/common/collect/dk;->a:Ljava/util/Comparator;

    invoke-static {p1, v2}, Lcom/google/common/collect/dk;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 161
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    :try_start_25
    invoke-virtual {p0}, Lcom/google/common/collect/dk;->b()Lcom/google/common/collect/dE;

    move-result-object v3

    .line 164
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 167
    if-eqz v5, :cond_3f

    invoke-virtual {p0, v4, v5}, Lcom/google/common/collect/dk;->c(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_3c} :catch_41
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_3c} :catch_44

    move-result v4

    if-eqz v4, :cond_29

    :cond_3f
    move v0, v1

    .line 169
    goto :goto_4

    .line 173
    :catch_41
    move-exception v0

    move v0, v1

    .line 174
    goto :goto_4

    .line 175
    :catch_44
    move-exception v0

    move v0, v1

    .line 176
    goto :goto_4

    .line 179
    :cond_47
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dk;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4
.end method

.method public first()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/common/collect/dk;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/dk;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
