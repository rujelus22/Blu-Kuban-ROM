.class public Lbc/x;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lau/s;I[LaJ/B;)Lbc/y;
    .registers 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lau/s;->O()[Lau/t;

    move-result-object v5

    aget-object v1, v5, p1

    invoke-virtual {v1}, Lau/t;->d()LaJ/B;

    move-result-object v6

    move v1, v0

    move v2, v3

    :goto_e
    array-length v4, p2

    if-ge v0, v4, :cond_22

    aget-object v4, p2, v0

    invoke-static {v6, v4}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v4

    cmpg-float v7, v4, v2

    if-ltz v7, :cond_1d

    if-nez v0, :cond_1f

    :cond_1d
    move v1, v0

    move v2, v4

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    aget-object v2, p2, v1

    if-lez v1, :cond_3d

    add-int/lit8 v0, v1, -0x1

    aget-object v0, p2, v0

    :goto_2a
    invoke-static {v2, v6, v0}, LI/g;->d(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v4

    invoke-static {v6, v2, v0}, LI/g;->d(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4d

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0, p1, v3}, Lbc/y;->a(IIF)Lbc/y;

    move-result-object v0

    :goto_3c
    return-object v0

    :cond_3d
    if-lez p1, :cond_48

    add-int/lit8 v0, p1, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Lau/t;->d()LaJ/B;

    move-result-object v0

    goto :goto_2a

    :cond_48
    invoke-virtual {p0}, Lau/s;->o()LaJ/B;

    move-result-object v0

    goto :goto_2a

    :cond_4d
    invoke-static {v1, p1, v3}, Lbc/y;->a(IIF)Lbc/y;

    move-result-object v0

    goto :goto_3c
.end method

.method private static a(Lau/s;[LaJ/B;)Ljava/util/HashMap;
    .registers 12

    const/4 v2, 0x0

    invoke-virtual {p0}, Lau/s;->O()[Lau/t;

    move-result-object v4

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4, p1}, Lbc/x;->a([Lau/t;[LaJ/B;)[I

    move-result-object v6

    move v1, v2

    :goto_e
    array-length v0, v4

    if-ge v1, v0, :cond_b1

    aget-object v0, v4, v1

    invoke-virtual {v0}, Lau/t;->d()LaJ/B;

    move-result-object v7

    move v3, v2

    :goto_18
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_5d

    aget-object v0, p1, v3

    add-int/lit8 v8, v3, 0x1

    aget-object v8, p1, v8

    invoke-static {v7, v0, v8}, LI/g;->a(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v0

    invoke-static {v3, v1, v0}, Lbc/y;->a(IIF)Lbc/y;

    move-result-object v8

    const/4 v9, 0x0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_34

    :goto_30
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_44

    invoke-static {}, LK/cw;->c()Ljava/util/TreeSet;

    move-result-object v0

    :cond_44
    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_55

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_5d
    aget v3, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-eqz v0, :cond_80

    invoke-static {v0}, Lbc/x;->a(Ljava/util/TreeSet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_9a
    invoke-static {}, LK/cw;->c()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p0, v1, p1}, Lbc/x;->a(Lau/s;I[LaJ/B;)Lbc/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e

    :cond_b1
    return-object v5
.end method

.method static a(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .registers 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v1, :cond_e

    move v0, v3

    :goto_21
    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    iget v2, v0, Lbc/y;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_47
    move-object v0, v4

    :goto_48
    return-object v0

    :cond_49
    invoke-static {p0, p1}, Lbc/x;->b(Ljava/util/HashMap;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_75

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    iget v2, v0, Lbc/y;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_73
    move-object v0, v4

    goto :goto_48

    :cond_75
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move-object v0, v4

    goto :goto_48

    :cond_80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lbc/y;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_90
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v2, v3

    :goto_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_90

    aget-object v1, v5, v2

    if-eqz v1, :cond_b5

    aget-object v7, v5, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc/y;

    invoke-virtual {v7, v1}, Lbc/y;->a(Lbc/y;)I

    move-result v1

    if-lez v1, :cond_bd

    :cond_b5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc/y;

    aput-object v1, v5, v2

    :cond_bd
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9d

    :cond_c1
    :goto_c1
    array-length v0, v5

    if-ge v3, v0, :cond_d4

    aget-object v0, v5, v3

    iget v0, v0, Lbc/y;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object v1, v5, v3

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_d4
    move-object v0, v4

    goto/16 :goto_48

    :cond_d7
    move v0, v1

    goto/16 :goto_21
.end method

.method private static a(Ljava/util/TreeSet;)Ljava/util/HashSet;
    .registers 5

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    iget v3, v0, Lbc/y;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lbc/y;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_29
    return-object v1
.end method

.method private static a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9

    if-lt p1, p2, :cond_6

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_18
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, p3, p4}, Lbc/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_1e
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc/y;

    iget v1, v1, Lbc/y;->a:I

    iget v3, v0, Lbc/y;->a:I

    if-gt v1, v3, :cond_22

    :cond_46
    invoke-static {p3}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, v1, p4}, Lbc/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_22
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashSet;[LaJ/B;ILK/H;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v2, -0x1

    add-int/lit8 v4, p3, 0x1

    move v1, v3

    :goto_5
    add-int/lit8 v0, v4, -0x1

    if-ge v3, v0, :cond_37

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    if-nez v0, :cond_1a

    move v0, v2

    :goto_16
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_5

    :cond_1a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v3

    goto :goto_16

    :cond_22
    :goto_22
    iget v2, v0, Lbc/y;->a:I

    if-gt v1, v2, :cond_32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v5, p2, v1

    invoke-virtual {p4, v2, v5}, LK/H;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_16

    :cond_37
    :goto_37
    array-length v0, p2

    if-ge v1, v0, :cond_48

    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object v3, p2, v1

    invoke-virtual {p4, v0, v3}, LK/H;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_48
    return-void
.end method

.method public static a([LaJ/B;Lau/s;LK/H;)V
    .registers 8

    invoke-virtual {p2}, LK/H;->e()V

    invoke-static {p1, p0}, Lbc/x;->a(Lau/s;[LaJ/B;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/y;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_39
    invoke-virtual {p1}, Lau/s;->O()[Lau/t;

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v0}, Lbc/x;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1, v2, p0, v0, p2}, Lbc/x;->a(Ljava/util/HashMap;Ljava/util/HashSet;[LaJ/B;ILK/H;)V

    return-void
.end method

.method private static a([Lau/t;[LaJ/B;)[I
    .registers 10

    const/4 v1, 0x0

    array-length v0, p0

    new-array v5, v0, [I

    move v0, v1

    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_29

    const/4 v2, 0x0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lau/t;->d()LaJ/B;

    move-result-object v6

    move v3, v2

    move v2, v1

    :goto_11
    array-length v4, p1

    if-ge v2, v4, :cond_26

    aget-object v4, p1, v2

    invoke-static {v6, v4}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v4

    cmpg-float v7, v4, v3

    if-ltz v7, :cond_20

    if-nez v2, :cond_23

    :cond_20
    aput v2, v5, v0

    move v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_29
    return-object v5
.end method

.method static b(Ljava/util/HashMap;I)Ljava/util/ArrayList;
    .registers 5

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1, v0}, Lbc/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method
