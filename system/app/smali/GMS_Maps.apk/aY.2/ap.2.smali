.class public LaY/ap;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;)I
    .registers 3

    invoke-static {p0}, LaY/ap;->c(Lcom/google/googlenav/ah;)Lam/b;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    goto :goto_7
.end method

.method public static a(Lam/b;Ljava/util/List;Ljava/util/List;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0, v9}, Lam/b;->l(I)I

    move-result v3

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v9, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0}, LaY/ap;->a(Lam/b;)[Lcom/google/googlenav/au;

    move-result-object v5

    move v0, v1

    :goto_1d
    array-length v6, v5

    if-ge v0, v6, :cond_31

    new-instance v6, Lcom/google/googlenav/ui/bG;

    aget-object v7, v5, v0

    iget-object v7, v7, Lcom/google/googlenav/au;->a:Ljava/lang/String;

    sget v8, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v6, v7, v8}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_31
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e
.end method

.method public static a(Lam/b;)[Lcom/google/googlenav/au;
    .registers 11

    const/16 v9, 0x11

    const/4 v8, 0x1

    invoke-virtual {p0, v9}, Lam/b;->l(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/googlenav/au;

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_38

    invoke-virtual {p0, v9, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4, v8}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-static {v4, v8}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/google/googlenav/au;

    invoke-static {p0}, LaY/ap;->b(Lam/b;)Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_2f

    invoke-static {p0}, LaY/ap;->c(Lam/b;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-direct {v6, v5, v7, v0, v4}, Lcom/google/googlenav/au;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_38
    return-object v3
.end method

.method public static b(Lcom/google/googlenav/ah;)I
    .registers 3

    invoke-static {p0}, LaY/ap;->d(Lcom/google/googlenav/ah;)Lam/b;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    goto :goto_7
.end method

.method private static b(Lam/b;)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, v7}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_20
    move v0, v2

    :goto_21
    const-string v5, "%s%s%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    if-eqz v0, :cond_37

    const-string v0, ""

    :goto_2c
    aput-object v0, v6, v2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    move v0, v1

    goto :goto_21

    :cond_37
    const-string v0, " - "

    goto :goto_2c
.end method

.method public static c(Lcom/google/googlenav/ah;)Lam/b;
    .registers 2

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    goto :goto_9
.end method

.method private static c(Lam/b;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\<.*?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/google/googlenav/ah;)Lam/b;
    .registers 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    goto :goto_9
.end method
