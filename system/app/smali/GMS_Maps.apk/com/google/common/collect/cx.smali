.class public final Lcom/google/common/collect/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)I
    .registers 5
    .parameter

    .prologue
    .line 99
    if-ltz p0, :cond_13

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 102
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, LJ/a;->a(J)I

    move-result v0

    return v0

    .line 99
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 141
    :cond_15
    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(I)I

    move-result v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 95
    return-object v1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 721
    instance-of v0, p0, Lcom/google/common/collect/cz;

    if-eqz v0, :cond_b

    .line 722
    check-cast p0, Lcom/google/common/collect/cz;

    invoke-virtual {p0}, Lcom/google/common/collect/cz;->a()Ljava/util/List;

    move-result-object v0

    .line 726
    :goto_a
    return-object v0

    .line 723
    :cond_b
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    .line 724
    new-instance v0, Lcom/google/common/collect/cy;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cy;-><init>(Ljava/util/List;)V

    goto :goto_a

    .line 726
    :cond_15
    new-instance v0, Lcom/google/common/collect/cz;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cz;-><init>(Ljava/util/List;)V

    goto :goto_a
.end method

.method public static a(Ljava/util/List;Lcom/google/common/base/D;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 342
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/cB;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cB;-><init>(Ljava/util/List;Lcom/google/common/base/D;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/cC;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cC;-><init>(Ljava/util/List;Lcom/google/common/base/D;)V

    goto :goto_9
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 904
    :cond_8
    :goto_8
    return v0

    .line 898
    :cond_9
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_f

    move v0, v1

    .line 899
    goto :goto_8

    .line 902
    :cond_f
    check-cast p1, Ljava/util/List;

    .line 904
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_29

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_29
    move v0, v1

    goto :goto_8
.end method

.method static b(Ljava/util/List;)I
    .registers 5
    .parameter

    .prologue
    .line 884
    const/4 v0, 0x1

    .line 885
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 886
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_16

    const/4 v0, 0x0

    :goto_14
    add-int/2addr v0, v3

    goto :goto_5

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    .line 888
    :cond_1b
    return v0
.end method

.method public static b(I)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 167
    if-ltz p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 167
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b()Ljava/util/LinkedList;
    .registers 1

    .prologue
    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .registers 4
    .parameter

    .prologue
    .line 216
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 220
    :cond_16
    return-object v0
.end method

.method public static c(I)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/cx;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
