.class public Lax/aI;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;I)I
    .registers 9

    const/4 v5, 0x1

    invoke-direct {p0}, Lax/aI;->c()V

    iget-object v0, p0, Lax/aI;->a:Lam/b;

    invoke-virtual {v0, v5}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_28

    iget-object v2, p0, Lax/aI;->a:Lam/b;

    invoke-virtual {v2, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-ne v2, p2, :cond_25

    :goto_24
    return v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public static final b()V
    .registers 4

    new-instance v0, Lax/ae;

    invoke-direct {v0}, Lax/ae;-><init>()V

    new-instance v1, Lax/aI;

    invoke-direct {v1}, Lax/aI;-><init>()V

    invoke-virtual {v0}, Lax/ae;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lax/aI;->a(Ljava/lang/String;I)V

    goto :goto_12

    :cond_23
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lax/aI;->a:Lam/b;

    if-nez v0, :cond_14

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->E:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lax/aI;->a:Lam/b;

    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lax/aI;->a:Lam/b;

    invoke-static {v0, v1}, Lbf/c;->a(Ljava/lang/String;Lam/b;)Lam/b;

    :cond_14
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    const/4 v1, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Lax/aI;->b(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lax/aI;->a:Lam/b;

    invoke-static {v0, v1}, Lam/g;->i(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lax/aI;->a:Lam/b;

    invoke-static {v0, v1}, Lbf/c;->b(Ljava/lang/String;Lam/b;)V

    goto :goto_3
.end method

.method public a(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aI;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, v1, p1}, Lax/aI;->b(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(I)V
    .registers 3

    invoke-virtual {p0}, Lax/aI;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lax/aI;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(I)V
    .registers 5

    invoke-virtual {p0}, Lax/aI;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, v0, p1}, Lax/aI;->b(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v1, p0, Lax/aI;->a:Lam/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lam/b;->g(II)V

    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lax/aI;->a:Lam/b;

    invoke-static {v0, v1}, Lbf/c;->b(Ljava/lang/String;Lam/b;)V

    goto :goto_6
.end method
