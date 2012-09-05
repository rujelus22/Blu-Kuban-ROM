.class public Lbe/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field b:Lbe/i;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbe/c;->a:Ljava/util/List;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbe/c;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Lam/b;)Lbe/c;
    .registers 5

    const/4 v3, 0x1

    new-instance v1, Lbe/c;

    invoke-direct {v1}, Lbe/c;-><init>()V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v3}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_1d

    invoke-virtual {p0, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-static {v2}, Lbe/i;->a(Lam/b;)Lbe/i;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Lbe/c;->a(Lbe/i;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return-object v1
.end method

.method private a(Lbe/i;Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    invoke-virtual {p1}, Lbe/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lbe/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbe/c;->b:Lbe/i;

    return-void
.end method

.method public a(Lbe/i;)V
    .registers 6

    iget-object v0, p0, Lbe/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lbe/i;->a(Lbe/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/e;

    iget-object v2, p0, Lbe/c;->c:Ljava/util/Map;

    iget-object v3, v0, Lbe/e;->a:Lbe/f;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lbe/c;->c:Ljava/util/Map;

    iget-object v0, v0, Lbe/e;->a:Lbe/f;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2b
    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 4

    sget-object v0, Lbe/f;->e:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbe/c;->a(Lbe/i;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iput-object v0, p0, Lbe/c;->b:Lbe/i;

    :cond_14
    return-void
.end method

.method public a(Lcom/google/googlenav/ah;Z)V
    .registers 11

    const/4 v7, 0x0

    sget-object v0, Lbe/f;->c:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lbe/c;->a(Lbe/i;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    if-eqz p2, :cond_6d

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lbe/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v0, 0xe

    invoke-virtual {v2}, Lbe/i;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/e;

    iget-object v5, v0, Lbe/e;->a:Lbe/f;

    sget-object v6, Lbe/f;->c:Lbe/f;

    if-ne v5, v6, :cond_74

    iget v5, v0, Lbe/e;->b:I

    if-lez v5, :cond_74

    iget v1, v0, Lbe/e;->b:I

    move v0, v1

    :goto_49
    move v1, v0

    goto :goto_30

    :cond_4b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbe/h;->a(J)I

    move-result v0

    if-ge v0, v1, :cond_6c

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/h;

    invoke-virtual {v2, v0}, Lbe/i;->a(Lbe/h;)V

    iput-object v2, p0, Lbe/c;->b:Lbe/i;

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lbe/i;->a(Lbe/h;)V

    iput-object v2, p0, Lbe/c;->b:Lbe/i;

    goto :goto_6c

    :cond_74
    move v0, v1

    goto :goto_49
.end method

.method public a(Lbe/f;)Z
    .registers 3

    iget-object v0, p0, Lbe/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lbe/f;)Lbe/i;
    .registers 3

    iget-object v0, p0, Lbe/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/i;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/ah;)V
    .registers 8

    sget-object v0, Lbe/f;->d:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lbe/c;->a(Lbe/i;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    invoke-static {v0, v2}, LaP/g;->a(LaE/h;LaJ/B;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_42

    invoke-virtual {v1}, Lbe/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/e;

    iget-object v4, v0, Lbe/e;->a:Lbe/f;

    sget-object v5, Lbe/f;->d:Lbe/f;

    if-ne v4, v5, :cond_29

    iget v0, v0, Lbe/e;->b:I

    if-lt v0, v2, :cond_29

    iput-object v1, p0, Lbe/c;->b:Lbe/i;

    goto :goto_29

    :cond_42
    return-void
.end method

.method public b(Lcom/google/googlenav/ah;Z)V
    .registers 11

    const/4 v7, 0x0

    sget-object v0, Lbe/f;->f:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lbe/c;->a(Lbe/i;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    if-eqz p2, :cond_69

    invoke-static {}, Lbe/a;->a()Lbe/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v0, 0xe

    invoke-virtual {v2}, Lbe/i;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/e;

    iget-object v5, v0, Lbe/e;->a:Lbe/f;

    sget-object v6, Lbe/f;->f:Lbe/f;

    if-ne v5, v6, :cond_70

    iget v5, v0, Lbe/e;->b:I

    if-lez v5, :cond_70

    iget v1, v0, Lbe/e;->b:I

    move v0, v1

    :goto_45
    move v1, v0

    goto :goto_2c

    :cond_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbe/g;->a(J)I

    move-result v0

    if-ge v0, v1, :cond_68

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/g;

    invoke-virtual {v2, v0}, Lbe/i;->a(Lbe/g;)V

    iput-object v2, p0, Lbe/c;->b:Lbe/i;

    :cond_68
    :goto_68
    return-void

    :cond_69
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lbe/i;->a(Lbe/g;)V

    iput-object v2, p0, Lbe/c;->b:Lbe/i;

    goto :goto_68

    :cond_70
    move v0, v1

    goto :goto_45
.end method

.method public b()Z
    .registers 3

    sget-object v0, Lbe/f;->c:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbe/f;->c:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->b:Lbe/i;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public c()Z
    .registers 3

    sget-object v0, Lbe/f;->e:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbe/f;->e:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->b:Lbe/i;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public d()Z
    .registers 3

    sget-object v0, Lbe/f;->d:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbe/f;->d:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->b:Lbe/i;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public e()Z
    .registers 3

    sget-object v0, Lbe/f;->f:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbe/f;->f:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->b:Lbe/i;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public f()V
    .registers 3

    sget-object v0, Lbe/f;->d:Lbe/f;

    invoke-virtual {p0, v0}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbe/c;->a:Ljava/util/List;

    sget-object v1, Lbe/f;->d:Lbe/f;

    invoke-virtual {p0, v1}, Lbe/c;->b(Lbe/f;)Lbe/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbe/c;->c:Ljava/util/Map;

    sget-object v1, Lbe/f;->d:Lbe/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lbe/c;->b:Lbe/i;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()Lbe/i;
    .registers 2

    iget-object v0, p0, Lbe/c;->b:Lbe/i;

    return-object v0
.end method
