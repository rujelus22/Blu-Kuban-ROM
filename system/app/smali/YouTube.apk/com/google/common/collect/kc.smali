.class final Lcom/google/common/collect/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1b

    .line 50
    check-cast p1, Ljava/util/SortedSet;

    .line 51
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    if-nez v0, :cond_16

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_1b
    instance-of v0, p1, Lcom/google/common/collect/kb;

    if-eqz v0, :cond_26

    .line 56
    check-cast p1, Lcom/google/common/collect/kb;

    invoke-interface {p1}, Lcom/google/common/collect/kb;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_16

    .line 58
    :cond_26
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static b(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 82
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_67

    .line 83
    check-cast p1, Lcom/google/common/collect/iq;

    invoke-interface {p1}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 85
    :goto_c
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_21

    .line 86
    invoke-static {p0, v0}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 87
    check-cast v0, Ljava/util/Set;

    .line 97
    :goto_18
    return-object v0

    .line 89
    :cond_19
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_18

    .line 93
    :cond_21
    invoke-static {v0}, Lcom/google/common/collect/eb;->a(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 94
    invoke-static {p0, v0}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 95
    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 97
    :cond_30
    array-length v0, v1

    if-nez v0, :cond_38

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_18

    :cond_38
    move v0, v2

    :goto_39
    array-length v3, v1

    if-ge v0, v3, :cond_52

    aget-object v3, v1, v0

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    invoke-interface {p0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_4f

    add-int/lit8 v3, v2, 0x1

    aget-object v4, v1, v0

    aput-object v4, v1, v2

    move v2, v3

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_52
    array-length v0, v1

    if-ge v2, v0, :cond_62

    invoke-static {v1, v2}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_62
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_18

    :cond_67
    move-object v0, p1

    goto :goto_c
.end method
