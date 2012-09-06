.class final LakT;
.super LaiR;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LaiR",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaiA;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiA",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p2}, LaiR;-><init>(Ljava/util/Comparator;)V

    .line 54
    iput-object p1, p0, LakT;->a:LaiA;

    .line 55
    invoke-virtual {p1}, LaiA;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 56
    return-void

    .line 55
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(II)LaiR;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 241
    if-nez p1, :cond_9

    invoke-virtual {p0}, LakT;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 247
    :goto_8
    return-object p0

    .line 243
    :cond_9
    if-ge p1, p2, :cond_1a

    .line 244
    new-instance v0, LakT;

    iget-object v1, p0, LakT;->a:LaiA;

    invoke-virtual {v1, p1, p2}, LaiA;->a(II)LaiA;

    move-result-object v1

    iget-object v2, p0, LakT;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, LakT;-><init>(LaiA;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_8

    .line 247
    :cond_1a
    iget-object v0, p0, LakT;->a:Ljava/util/Comparator;

    invoke-static {v0}, LakT;->a(Ljava/util/Comparator;)LaiR;

    move-result-object p0

    goto :goto_8
.end method

.method private b(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, LakT;->a:Ljava/util/Comparator;

    .line 139
    iget-object v1, p0, LakT;->a:LaiA;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 253
    if-nez p1, :cond_4

    .line 268
    :goto_3
    return v1

    .line 258
    :cond_4
    :try_start_4
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lall;->a:Lall;

    sget-object v4, Lalh;->c:Lalh;

    invoke-static {v0, p1, v2, v3, v4}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_11} :catch_24

    move-result v0

    .line 268
    if-ltz v0, :cond_22

    iget-object v2, p0, LakT;->a:LaiA;

    invoke-virtual {v2, v0}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_20
    move v1, v0

    goto :goto_3

    :cond_22
    move v0, v1

    goto :goto_20

    .line 260
    :catch_24
    move-exception v0

    goto :goto_3
.end method

.method a(Ljava/lang/Object;Z)LaiR;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p2, :cond_1a

    .line 203
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lall;->d:Lall;

    sget-object v4, Lalh;->b:Lalh;

    invoke-static {v0, v1, v2, v3, v4}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I

    move-result v0

    .line 209
    :goto_14
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, LakT;->a(II)LaiR;

    move-result-object v0

    return-object v0

    .line 206
    :cond_1a
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lall;->c:Lall;

    sget-object v4, Lalh;->b:Lalh;

    invoke-static {v0, v1, v2, v3, v4}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I

    move-result v0

    goto :goto_14
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiR;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, LakT;->b(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, LaiR;->a(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Z

    move-result v0

    return v0
.end method

.method b()LaiA;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, LaiJ;

    iget-object v1, p0, LakT;->a:LaiA;

    invoke-direct {v0, p0, v1}, LaiJ;-><init>(LaiR;LaiA;)V

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)LaiR;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p2, :cond_1d

    .line 223
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lall;->c:Lall;

    sget-object v4, Lalh;->b:Lalh;

    invoke-static {v0, v1, v2, v3, v4}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I

    move-result v0

    .line 229
    :goto_14
    invoke-virtual {p0}, LakT;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, LakT;->a(II)LaiR;

    move-result-object v0

    return-object v0

    .line 226
    :cond_1d
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lall;->d:Lall;

    sget-object v4, Lalh;->b:Lalh;

    invoke-static {v0, v1, v2, v3, v4}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I

    move-result v0

    goto :goto_14
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_4

    .line 78
    :cond_3
    :goto_3
    return v0

    .line 76
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, LakT;->b(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 77
    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, LakT;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Lale;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_17

    .line 89
    :cond_12
    invoke-super {p0, p1}, LaiR;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 125
    :goto_16
    return v0

    .line 96
    :cond_17
    invoke-virtual {p0}, LakT;->a()Lalu;

    move-result-object v3

    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 102
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, LakT;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 106
    if-nez v5, :cond_40

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    .line 110
    goto :goto_16

    .line 113
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_3e} :catch_44
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_3e} :catch_47

    move-result-object v0

    goto :goto_23

    .line 115
    :cond_40
    if-lez v5, :cond_23

    move v0, v2

    .line 116
    goto :goto_16

    .line 119
    :catch_44
    move-exception v0

    move v0, v2

    .line 120
    goto :goto_16

    .line 121
    :catch_47
    move-exception v0

    move v0, v2

    .line 122
    goto :goto_16

    :cond_4a
    move v0, v2

    .line 125
    goto :goto_16
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p1, p0, :cond_5

    .line 186
    :cond_4
    :goto_4
    return v0

    .line 158
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_b

    move v0, v1

    .line 159
    goto :goto_4

    .line 162
    :cond_b
    check-cast p1, Ljava/util/Set;

    .line 163
    invoke-virtual {p0}, LakT;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 164
    goto :goto_4

    .line 167
    :cond_19
    iget-object v2, p0, LakT;->a:Ljava/util/Comparator;

    invoke-static {v2, p1}, Lale;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 168
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    :try_start_25
    invoke-virtual {p0}, LakT;->a()Lalu;

    move-result-object v3

    .line 171
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_3f

    invoke-virtual {p0, v4, v5}, LakT;->a(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_3c} :catch_41
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_3c} :catch_44

    move-result v4

    if-eqz v4, :cond_29

    :cond_3f
    move v0, v1

    .line 176
    goto :goto_4

    .line 180
    :catch_41
    move-exception v0

    move v0, v1

    .line 181
    goto :goto_4

    .line 182
    :catch_44
    move-exception v0

    move v0, v1

    .line 183
    goto :goto_4

    .line 186
    :cond_47
    invoke-virtual {p0, p1}, LakT;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, LakT;->a:LaiA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, LakT;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {p0}, LakT;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {v0}, LaiA;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, LakT;->a:LaiA;

    invoke-virtual {v0, p1}, LaiA;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
