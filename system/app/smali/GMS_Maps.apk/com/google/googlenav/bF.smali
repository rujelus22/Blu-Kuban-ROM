.class public Lcom/google/googlenav/bF;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/bF;->g(Lam/b;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-virtual {p1, v3}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    invoke-virtual {p1, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bF;->h(Lam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/googlenav/bF;->a(Ljava/util/List;)V

    goto :goto_d
.end method

.method public static a(I)I
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, -0x1

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    :pswitch_11
    const/4 v0, 0x6

    goto :goto_4

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private a(IILam/b;)V
    .registers 12

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p3, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    :goto_c
    if-ge p1, p2, :cond_3b

    add-int/lit8 v2, p1, 0x6

    rem-int/lit8 v2, v2, 0x7

    invoke-static {v0, v7}, Lam/g;->g(Lam/b;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v0, v6}, Lam/g;->e(Lam/b;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/bq;->a(III)I

    move-result v2

    add-int/lit8 v3, p1, 0x6

    rem-int/lit8 v3, v3, 0x7

    invoke-static {v1, v7}, Lam/g;->g(Lam/b;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v1, v6}, Lam/g;->e(Lam/b;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/bq;->a(III)I

    move-result v3

    new-instance v4, Lcom/google/googlenav/bG;

    invoke-direct {v4, v2, v3}, Lcom/google/googlenav/bG;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/googlenav/bF;->a(Lcom/google/googlenav/bG;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_3b
    return-void
.end method

.method private a(Lcom/google/googlenav/bG;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bG;->a(Lcom/google/googlenav/bG;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bG;->a(Lcom/google/googlenav/bG;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_23

    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26
.end method

.method private a(Ljava/util/List;)V
    .registers 9

    const/4 v3, 0x0

    move v2, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_37

    move v4, v3

    :goto_17
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->a()I

    move-result v6

    if-ne v5, v6, :cond_3b

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bG;->a(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez v4, :cond_3f

    add-int/lit8 v0, v2, -0x1

    :goto_35
    move v2, v0

    goto :goto_2

    :cond_37
    add-int/lit8 v1, v2, 0x1

    move v4, v1

    goto :goto_17

    :cond_3b
    add-int/lit8 v0, v2, 0x1

    goto :goto_35

    :cond_3e
    return-void

    :cond_3f
    move v0, v2

    goto :goto_35
.end method

.method private a(Lam/b;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lam/b;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private c(Lam/b;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v3}, Lam/g;->h(Lam/b;I)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_9
    return v1

    :cond_a
    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v2

    if-ne v2, v3, :cond_12

    :goto_10
    move v1, v0

    goto :goto_9

    :cond_12
    move v0, v1

    goto :goto_10
.end method

.method private d(Lam/b;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/bF;->c(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bF;->b(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bF;->b(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private e(Lam/b;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/bF;->c(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bF;->a(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bF;->a(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private f(Lam/b;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v2

    if-ne v2, v0, :cond_14

    invoke-virtual {p1, v0, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bF;->d(Lam/b;)Z

    move-result v1

    goto :goto_4

    :cond_14
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v0, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bF;->d(Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1, v0, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bF;->e(Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :goto_2b
    move v1, v0

    goto :goto_4

    :cond_2d
    move v0, v1

    goto :goto_2b
.end method

.method private g(Lam/b;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1, v1}, Lam/b;->l(I)I

    move-result v3

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_19

    invoke-virtual {p1, v1, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/googlenav/bF;->f(Lam/b;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    move v0, v1

    goto :goto_4
.end method

.method private h(Lam/b;)V
    .registers 8

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lam/b;->l(I)I

    move-result v0

    if-ne v0, v2, :cond_12

    invoke-virtual {p1, v2, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-direct {p0, v3, v5, v0}, Lcom/google/googlenav/bF;->a(IILam/b;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-virtual {p1, v2, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {p1, v2, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v2, v4}, Lam/g;->g(Lam/b;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v4}, Lam/g;->g(Lam/b;I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {p0, v2, v1, v0}, Lcom/google/googlenav/bF;->a(IILam/b;)V

    goto :goto_11
.end method


# virtual methods
.method public a(J)Lcom/google/googlenav/bH;
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bq;->a(J)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->a()I

    move-result v3

    if-ge v2, v3, :cond_3f

    new-instance v1, Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->a()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->a()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v5, v0}, Lcom/google/googlenav/bH;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e

    :cond_3f
    invoke-virtual {v0}, Lcom/google/googlenav/bG;->b()I

    move-result v3

    if-ge v2, v3, :cond_19

    new-instance v1, Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->b()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->b()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v4, v0}, Lcom/google/googlenav/bH;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e

    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    new-instance v1, Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->a()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x93a80

    sub-int v2, v4, v2

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v1, v3, v5, v0}, Lcom/google/googlenav/bH;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e
.end method
