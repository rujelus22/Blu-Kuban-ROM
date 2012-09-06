.class final Lalf;
.super Ljava/lang/Object;
.source "SortedLists.java"


# direct methods
.method public static a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lall;",
            "Lalh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_14

    .line 263
    invoke-static {p0}, Lajk;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 267
    :cond_14
    const/4 v1, 0x0

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 270
    :goto_1b
    if-gt v1, v0, :cond_40

    .line 271
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 272
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 273
    if-gez v3, :cond_2e

    .line 274
    add-int/lit8 v0, v2, -0x1

    goto :goto_1b

    .line 275
    :cond_2e
    if-lez v3, :cond_33

    .line 276
    add-int/lit8 v1, v2, 0x1

    goto :goto_1b

    .line 278
    :cond_33
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    sub-int/2addr v2, v1

    invoke-virtual {p3, p2, p1, v0, v2}, Lall;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 282
    :goto_3f
    return v0

    :cond_40
    invoke-virtual {p4, v1}, Lalh;->a(I)I

    move-result v0

    goto :goto_3f
.end method
