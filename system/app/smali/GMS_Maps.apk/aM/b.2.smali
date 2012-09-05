.class public LaM/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/b;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, LaM/b;->b:I

    const/16 v0, 0xa

    iput v0, p0, LaM/b;->c:I

    return-void
.end method

.method private a(IJLjava/util/Map;)Lam/b;
    .registers 9

    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lam/b;

    sget-object v2, LbD/go;->e:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_f

    :cond_20
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lam/b;->h(II)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p2, p3}, Lam/b;->b(IJ)V

    return-object v1
.end method

.method private a(Ljava/lang/String;LaM/c;)Lam/b;
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p2, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private a(LaM/c;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p1, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lam/b;Lam/b;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    invoke-virtual {p2, v4}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_9
    invoke-virtual {p2, v1}, Lam/b;->d(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    :goto_10
    return v0

    :pswitch_11
    invoke-virtual {p1, v4}, Lam/b;->d(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1f

    invoke-virtual {p1, v4, v2}, Lam/b;->h(II)V

    goto :goto_10

    :cond_1f
    move v0, v1

    goto :goto_10

    :pswitch_21
    move v0, v1

    goto :goto_10

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_21
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)Lam/b;
    .registers 7

    invoke-direct {p0, p1}, LaM/b;->d(I)LaM/c;

    move-result-object v1

    iget-object v0, v1, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-nez v0, :cond_1a

    new-instance v0, Lam/b;

    sget-object v2, LbD/go;->b:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, v1, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-wide/high16 v2, -0x8000

    iput-wide v2, v1, LaM/c;->c:J

    return-object v0
.end method

.method private d(I)LaM/c;
    .registers 4

    invoke-direct {p0, p1}, LaM/b;->e(I)LaM/c;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, LaM/c;

    invoke-direct {v0, p0, p1}, LaM/c;-><init>(LaM/b;I)V

    iget-object v1, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v0
.end method

.method private e(I)LaM/c;
    .registers 5

    iget-object v0, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/c;

    iget v2, v0, LaM/c;->a:I

    if-ne v2, p1, :cond_6

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a()Lam/b;
    .registers 11

    const/4 v9, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/go;->f:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v9}, Lam/b;->b(IZ)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v2

    iget-object v0, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/c;

    iget-wide v5, v0, LaM/c;->c:J

    const-wide/high16 v7, -0x8000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3b

    iget-wide v5, v0, LaM/c;->c:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1e

    :cond_3b
    iget v5, v0, LaM/c;->a:I

    iget-wide v6, v0, LaM/c;->b:J

    iget-object v0, v0, LaM/c;->d:Ljava/util/Map;

    invoke-direct {p0, v5, v6, v7, v0}, LaM/b;->a(IJLjava/util/Map;)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_1e

    :cond_49
    return-object v1
.end method

.method public a(ILjava/lang/String;)Lam/b;
    .registers 4

    invoke-direct {p0, p1}, LaM/b;->e(I)LaM/c;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(I)V
    .registers 2

    invoke-direct {p0, p1}, LaM/b;->d(I)LaM/c;

    return-void
.end method

.method public a(IJ)V
    .registers 5

    invoke-direct {p0, p1}, LaM/b;->d(I)LaM/c;

    move-result-object v0

    iput-wide p2, v0, LaM/c;->b:J

    return-void
.end method

.method public a(Lam/b;)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lam/b;->d(I)I

    move-result v2

    invoke-direct {p0, v2}, LaM/b;->d(I)LaM/c;

    move-result-object v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    iput-wide v3, v2, LaM/c;->c:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    return-void
.end method

.method public a(ILam/b;)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LaM/b;->b(ILjava/lang/String;)Lam/b;

    move-result-object v3

    iget v0, p0, LaM/b;->b:I

    const v4, 0x7fffffff

    if-ge v0, v4, :cond_30

    iget v0, p0, LaM/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaM/b;->b:I

    :goto_18
    iput v0, p0, LaM/b;->b:I

    iget v0, p0, LaM/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v5, v1}, Lam/b;->h(II)V

    :try_start_26
    invoke-static {p2}, Lam/g;->a(Lam/b;)Lam/b;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_32

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v3, v1, v0}, Lam/b;->b(ILam/b;)V

    move v1, v2

    :goto_2f
    return v1

    :cond_30
    move v0, v1

    goto :goto_18

    :catch_32
    move-exception v0

    goto :goto_2f
.end method

.method public b(I)Ljava/util/List;
    .registers 5

    invoke-direct {p0, p1}, LaM/b;->d(I)LaM/c;

    move-result-object v0

    iget-object v1, v0, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    return-object v1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Lam/b;)V
    .registers 16

    const/4 v1, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v11}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, LaM/b;->b:I

    invoke-static {p1, v12}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v3

    if-nez v3, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-virtual {v3, v11}, Lam/b;->l(I)I

    move-result v4

    move v2, v1

    :goto_16
    if-ge v2, v4, :cond_10

    invoke-virtual {v3, v11, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-virtual {v5, v11}, Lam/b;->d(I)I

    move-result v0

    invoke-direct {p0, v0}, LaM/b;->d(I)LaM/c;

    move-result-object v6

    invoke-static {v5, v12}, Lam/g;->f(Lam/b;I)J

    move-result-wide v7

    iput-wide v7, v6, LaM/c;->b:J

    invoke-virtual {v5, v13}, Lam/b;->l(I)I

    move-result v7

    move v0, v1

    :goto_2f
    if-ge v0, v7, :cond_45

    invoke-virtual {v5, v13, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v8

    invoke-virtual {v8, v13}, Lam/b;->h(I)Lam/b;

    move-result-object v9

    invoke-virtual {v9, v12}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16
.end method

.method public b(ILam/b;)Z
    .registers 10

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, v1}, Lam/b;->k(I)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p2, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, p1}, LaM/b;->e(I)LaM/c;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, LaM/b;->a(Ljava/lang/String;LaM/c;)Lam/b;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v6}, Lam/b;->k(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v2, v6}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-direct {p0, v4, v2}, LaM/b;->a(Lam/b;Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_34
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, LaM/b;->a(LaM/c;Ljava/lang/String;)V

    move v0, v1

    goto :goto_9
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/c;

    iget v0, v0, LaM/c;->a:I

    if-ne v0, p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_19
    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, LaM/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/c;

    iget-object v0, v0, LaM/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public d()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbC/j;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LaM/b;->a()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x1

    iget v2, p0, LaM/b;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method
