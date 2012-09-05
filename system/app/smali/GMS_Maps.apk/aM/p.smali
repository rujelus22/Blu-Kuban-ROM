.class public LaM/p;
.super LaM/j;


# static fields
.field private static final a:Lar/d;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaM/q;

    invoke-direct {v0}, LaM/q;-><init>()V

    sput-object v0, LaM/p;->a:Lar/d;

    return-void
.end method

.method public constructor <init>(LaM/w;LaM/o;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, LaM/j;-><init>(LaM/w;LaM/o;IZ)V

    return-void
.end method

.method private d(Lam/b;)Lam/b;
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(LaM/m;Lam/b;)V
    .registers 5

    invoke-virtual {p1}, LaM/m;->j()Lam/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method protected a(Lam/b;Lam/b;)V
    .registers 11

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v5, 0xa

    invoke-direct {p0, p1}, LaM/p;->d(Lam/b;)Lam/b;

    move-result-object v1

    invoke-direct {p0, p2}, LaM/p;->d(Lam/b;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {v2, v4}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v2, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lam/b;->b(ILam/b;)V

    :cond_28
    invoke-virtual {v2, v6}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v2, v6}, Lam/b;->e(I)J

    move-result-wide v3

    invoke-virtual {v1, v6, v3, v4}, Lam/b;->b(IJ)V

    :cond_35
    invoke-virtual {v2, v7}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v2, v7}, Lam/b;->d(I)I

    move-result v0

    invoke-virtual {v1, v7, v0}, Lam/b;->h(II)V

    :cond_42
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x6

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lam/b;->b(I)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lam/b;->b(IZ)V

    :cond_52
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x7

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lam/b;->b(I)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lam/b;->b(IZ)V

    :cond_62
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0x8

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lam/b;->d(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lam/b;->h(II)V

    :cond_75
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_88

    const/16 v0, 0x9

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lam/b;->b(I)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lam/b;->b(IZ)V

    :cond_88
    invoke-virtual {v2, v5}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v0

    :goto_92
    if-lez v0, :cond_9a

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Lam/b;->g(II)V

    goto :goto_92

    :cond_9a
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_9f
    if-ge v0, v3, :cond_ab

    invoke-virtual {v2, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_ab
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, LaM/p;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LaM/p;->b:Ljava/util/List;

    if-nez v1, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LaM/m;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v2, LaM/p;->a:Lar/d;

    invoke-static {v1, v2}, Lar/a;->a([Ljava/lang/Object;Lar/d;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/p;->b:Ljava/util/List;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_32

    aget-object v3, v1, v0

    iget-object v4, p0, LaM/p;->b:Ljava/util/List;

    invoke-virtual {v3}, LaM/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_32
    iget-object v0, p0, LaM/p;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(LaM/m;)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, LaM/p;->b:Ljava/util/List;

    invoke-virtual {p1}, LaM/m;->g()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, LaM/p;->d()LaM/w;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LaM/w;->b(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected c(Lam/b;)LaM/m;
    .registers 4

    new-instance v0, LaM/m;

    invoke-direct {p0, p1}, LaM/p;->d(Lam/b;)Lam/b;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/m;-><init>(Lam/b;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
