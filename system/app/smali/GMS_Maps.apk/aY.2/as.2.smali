.class public LaY/as;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;I)Lbd/k;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->O()[Lcom/google/googlenav/au;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->N()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v3, :cond_42

    array-length v0, v3

    if-lez v0, :cond_42

    const/4 v0, 0x0

    :goto_13
    array-length v1, v3

    if-ge v0, v1, :cond_2d

    aget-object v1, v3, v0

    iget-object v1, v1, Lcom/google/googlenav/au;->a:Ljava/lang/String;

    if-eqz v1, :cond_2a

    new-instance v1, Lcom/google/googlenav/ui/bG;

    aget-object v4, v3, v0

    iget-object v4, v4, Lcom/google/googlenav/au;->a:Ljava/lang/String;

    sget v6, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v1, v4, v6}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    new-instance v0, LaY/au;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, LaY/au;-><init>(Lcom/google/googlenav/ah;Ljava/util/List;[Lcom/google/googlenav/au;Lcom/google/googlenav/ui/ai;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v1

    new-instance v3, LaY/at;

    invoke-direct {v3, v0}, LaY/at;-><init>(LaY/au;)V

    invoke-virtual {v1, v2, v3}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :goto_41
    return-object v0

    :cond_42
    if-nez v3, :cond_4f

    new-instance v0, LaY/au;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move v6, p2

    invoke-direct/range {v0 .. v6}, LaY/au;-><init>(Lcom/google/googlenav/ah;Ljava/util/List;[Lcom/google/googlenav/au;Lcom/google/googlenav/ui/ai;Ljava/lang/String;I)V

    goto :goto_41

    :cond_4f
    move-object v0, v1

    goto :goto_41
.end method
