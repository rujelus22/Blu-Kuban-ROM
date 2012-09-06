.class public LaP/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lad/t;I[Lat/B;)LaP/y;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 347
    .line 349
    invoke-virtual {p0}, Lad/t;->O()[Lad/u;

    move-result-object v5

    .line 350
    aget-object v1, v5, p1

    invoke-virtual {v1}, Lad/u;->d()Lat/B;

    move-result-object v6

    move v1, v0

    move v2, v3

    .line 351
    :goto_e
    array-length v4, p2

    if-ge v0, v4, :cond_22

    .line 352
    aget-object v4, p2, v0

    invoke-static {v6, v4}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v4

    .line 353
    cmpg-float v7, v4, v2

    if-ltz v7, :cond_1d

    if-nez v0, :cond_1f

    :cond_1d
    move v1, v0

    move v2, v4

    .line 351
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 358
    :cond_22
    aget-object v2, p2, v1

    .line 363
    if-lez v1, :cond_3d

    .line 364
    add-int/lit8 v0, v1, -0x1

    aget-object v0, p2, v0

    .line 373
    :goto_2a
    invoke-static {v2, v6, v0}, LF/g;->d(Lat/B;Lat/B;Lat/B;)F

    move-result v4

    .line 377
    invoke-static {v6, v2, v0}, LF/g;->d(Lat/B;Lat/B;Lat/B;)F

    move-result v0

    .line 383
    cmpg-float v0, v0, v4

    if-gez v0, :cond_4d

    .line 387
    add-int/lit8 v0, v1, -0x1

    invoke-static {v0, p1, v3}, LaP/y;->a(IIF)LaP/y;

    move-result-object v0

    .line 389
    :goto_3c
    return-object v0

    .line 365
    :cond_3d
    if-lez p1, :cond_48

    .line 366
    add-int/lit8 v0, p1, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Lad/u;->d()Lat/B;

    move-result-object v0

    goto :goto_2a

    .line 368
    :cond_48
    invoke-virtual {p0}, Lad/t;->o()Lat/B;

    move-result-object v0

    goto :goto_2a

    .line 389
    :cond_4d
    invoke-static {v1, p1, v3}, LaP/y;->a(IIF)LaP/y;

    move-result-object v0

    goto :goto_3c
.end method

.method private static a(Lad/t;[Lat/B;)Ljava/util/HashMap;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lad/t;->O()[Lad/u;

    move-result-object v4

    .line 107
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v5

    .line 109
    invoke-static {v4, p1}, LaP/x;->a([Lad/u;[Lat/B;)[I

    move-result-object v6

    move v1, v2

    .line 111
    :goto_e
    array-length v0, v4

    if-ge v1, v0, :cond_b1

    .line 112
    aget-object v0, v4, v1

    invoke-virtual {v0}, Lad/u;->d()Lat/B;

    move-result-object v7

    move v3, v2

    .line 113
    :goto_18
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_5d

    .line 114
    aget-object v0, p1, v3

    add-int/lit8 v8, v3, 0x1

    aget-object v8, p1, v8

    invoke-static {v7, v0, v8}, LF/g;->a(Lat/B;Lat/B;Lat/B;)F

    move-result v0

    .line 115
    invoke-static {v3, v1, v0}, LaP/y;->a(IIF)LaP/y;

    move-result-object v8

    .line 116
    const/4 v9, 0x0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_34

    .line 113
    :goto_30
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    .line 119
    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 120
    if-nez v0, :cond_44

    .line 121
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v0

    .line 123
    :cond_44
    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_55

    .line 125
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 135
    :cond_5d
    aget v3, v6, v1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 137
    if-eqz v0, :cond_80

    invoke-static {v0}, LaP/x;->a(Ljava/util/TreeSet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
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

    .line 144
    :cond_9a
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v0

    .line 145
    invoke-static {p0, v1, p1}, LaP/x;->a(Lad/t;I[Lat/B;)LaP/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e

    .line 149
    :cond_b1
    return-object v5
.end method

.method static a(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 225
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 227
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

    .line 228
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v1, :cond_e

    move v0, v3

    .line 233
    :goto_21
    if-eqz v0, :cond_49

    .line 234
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

    .line 235
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/y;

    .line 236
    iget v2, v0, LaP/y;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_47
    move-object v0, v4

    .line 270
    :goto_48
    return-object v0

    .line 242
    :cond_49
    invoke-static {p0, p1}, LaP/x;->b(Ljava/util/HashMap;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_75

    .line 247
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/y;

    .line 249
    iget v2, v0, LaP/y;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_73
    move-object v0, v4

    .line 251
    goto :goto_48

    .line 253
    :cond_75
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 254
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move-object v0, v4

    .line 255
    goto :goto_48

    .line 259
    :cond_80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [LaP/y;

    .line 260
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

    .line 261
    :goto_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_90

    .line 262
    aget-object v1, v5, v2

    if-eqz v1, :cond_b5

    aget-object v7, v5, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaP/y;

    invoke-virtual {v7, v1}, LaP/y;->a(LaP/y;)I

    move-result v1

    if-lez v1, :cond_bd

    .line 263
    :cond_b5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaP/y;

    aput-object v1, v5, v2

    .line 261
    :cond_bd
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9d

    .line 267
    :cond_c1
    :goto_c1
    array-length v0, v5

    if-ge v3, v0, :cond_d4

    .line 268
    aget-object v0, v5, v3

    iget v0, v0, LaP/y;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object v1, v5, v3

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_d4
    move-object v0, v4

    .line 270
    goto/16 :goto_48

    :cond_d7
    move v0, v1

    goto/16 :goto_21
.end method

.method private static a(Ljava/util/TreeSet;)Ljava/util/HashSet;
    .registers 5
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/y;

    .line 161
    iget v3, v0, LaP/y;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    iget v0, v0, LaP/y;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 164
    :cond_29
    return-object v1
.end method

.method private static a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    if-lt p1, p2, :cond_6

    .line 308
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_5
    :goto_5
    return-void

    .line 311
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 315
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 316
    :cond_18
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, p3, p4}, LaP/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 318
    :cond_1e
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 319
    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/y;

    .line 321
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaP/y;

    iget v1, v1, LaP/y;->a:I

    iget v3, v0, LaP/y;->a:I

    if-gt v1, v3, :cond_22

    .line 323
    :cond_46
    invoke-static {p3}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, v1, p4}, LaP/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_22
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashSet;[Lat/B;ILcom/google/common/collect/P;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 407
    .line 408
    const/4 v2, -0x1

    .line 409
    add-int/lit8 v4, p3, 0x1

    move v1, v3

    .line 410
    :goto_5
    add-int/lit8 v0, v4, -0x1

    if-ge v3, v0, :cond_37

    .line 411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/y;

    .line 412
    if-nez v0, :cond_1a

    move v0, v2

    .line 410
    :goto_16
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_5

    .line 416
    :cond_1a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v3

    .line 417
    goto :goto_16

    .line 419
    :cond_22
    :goto_22
    iget v2, v0, LaP/y;->a:I

    if-gt v1, v2, :cond_32

    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v5, p2, v1

    invoke-virtual {p4, v2, v5}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 423
    :cond_32
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_16

    .line 428
    :cond_37
    :goto_37
    array-length v0, p2

    if-ge v1, v0, :cond_48

    .line 429
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object v3, p2, v1

    invoke-virtual {p4, v0, v3}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 432
    :cond_48
    return-void
.end method

.method public static a([Lat/B;Lad/t;Lcom/google/common/collect/P;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/google/common/collect/P;->e()V

    .line 63
    invoke-static {p1, p0}, LaP/x;->a(Lad/t;[Lat/B;)Ljava/util/HashMap;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 78
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

    .line 79
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

    check-cast v0, LaP/y;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 87
    :cond_39
    invoke-virtual {p1}, Lad/t;->O()[Lad/u;

    move-result-object v0

    array-length v0, v0

    .line 88
    invoke-static {v1, v0}, LaP/x;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v1

    .line 91
    invoke-static {v1, v2, p0, v0, p2}, LaP/x;->a(Ljava/util/HashMap;Ljava/util/HashSet;[Lat/B;ILcom/google/common/collect/P;)V

    .line 93
    return-void
.end method

.method private static a([Lad/u;[Lat/B;)[I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    array-length v0, p0

    new-array v5, v0, [I

    move v0, v1

    .line 178
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 179
    const/4 v2, 0x0

    .line 180
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lad/u;->d()Lat/B;

    move-result-object v6

    move v3, v2

    move v2, v1

    .line 181
    :goto_11
    array-length v4, p1

    if-ge v2, v4, :cond_26

    .line 182
    aget-object v4, p1, v2

    invoke-static {v6, v4}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v4

    .line 183
    cmpg-float v7, v4, v3

    if-ltz v7, :cond_20

    if-nez v2, :cond_23

    .line 185
    :cond_20
    aput v2, v5, v0

    move v3, v4

    .line 181
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 178
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 189
    :cond_29
    return-object v5
.end method

.method static b(Ljava/util/HashMap;I)Ljava/util/ArrayList;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1, v0}, LaP/x;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 289
    return-object v0
.end method
