.class public Lae/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lat/B;Lat/B;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4034

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 47
    const/16 v2, 0x200

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 49
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v2

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 50
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v3

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v4

    sub-int/2addr v3, v4

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    :goto_2f
    if-gt v0, v1, :cond_44

    .line 54
    int-to-double v5, v0

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 55
    int-to-double v7, v2

    mul-double/2addr v7, v5

    double-to-int v7, v7

    int-to-double v8, v3

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-virtual {p0, v7, v5}, Lat/B;->b(II)Lat/B;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 60
    :cond_44
    return-object v4
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 74
    :cond_29
    return-object v1
.end method

.method public static b(Ljava/util/List;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    move v1, v0

    move v2, v0

    .line 82
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2a

    .line 83
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    invoke-virtual {v0}, Lae/a;->a()Lat/B;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    invoke-virtual {v0}, Lae/a;->a()Lat/B;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    add-int/2addr v2, v0

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 86
    :cond_2a
    return v2
.end method

.method public static c(Ljava/util/List;)Lae/a;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_8
    const-string v2, "List of ElevationPoints must be non-empty"

    invoke-static {v0, v2}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 94
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    .line 96
    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v3

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_35

    :goto_30
    move-object v1, v0

    .line 97
    goto :goto_18

    :cond_32
    move v0, v1

    .line 93
    goto :goto_8

    .line 100
    :cond_34
    return-object v1

    :cond_35
    move-object v0, v1

    goto :goto_30
.end method

.method public static d(Ljava/util/List;)Lae/a;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_8
    const-string v2, "List of ElevationPoints must be non-empty"

    invoke-static {v0, v2}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    .line 110
    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v3

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_35

    :goto_30
    move-object v1, v0

    .line 111
    goto :goto_18

    :cond_32
    move v0, v1

    .line 107
    goto :goto_8

    .line 114
    :cond_34
    return-object v1

    :cond_35
    move-object v0, v1

    goto :goto_30
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_31

    .line 124
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/a;

    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 126
    :cond_31
    return-object v3
.end method

.method public static f(Ljava/util/List;)D
    .registers 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v3

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 136
    cmpl-double v0, v6, v3

    if-lez v0, :cond_20

    .line 137
    add-double v0, v1, v6

    :goto_1d
    move-wide v1, v0

    goto :goto_7

    .line 140
    :cond_1f
    return-wide v1

    :cond_20
    move-wide v0, v1

    goto :goto_1d
.end method
