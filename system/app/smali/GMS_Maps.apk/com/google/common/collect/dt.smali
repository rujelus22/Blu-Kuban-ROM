.class final Lcom/google/common/collect/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/dv;Z)I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 356
    :goto_d
    if-gt v3, v5, :cond_31

    .line 357
    sub-int v0, v5, v3

    div-int/lit8 v0, v0, 0x2

    add-int v4, v3, v0

    .line 358
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 359
    if-gez v0, :cond_22

    .line 360
    add-int/lit8 v5, v4, -0x1

    goto :goto_d

    .line 361
    :cond_22
    if-lez v0, :cond_27

    .line 362
    add-int/lit8 v3, v4, 0x1

    goto :goto_d

    :cond_27
    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p4

    .line 364
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/collect/dv;->a(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I

    move-result v0

    .line 369
    :goto_30
    return v0

    :cond_31
    invoke-virtual {p3, p0, p1, v3, p2}, Lcom/google/common/collect/dv;->a(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I

    move-result v0

    goto :goto_30
.end method
