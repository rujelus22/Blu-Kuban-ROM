.class public Lcom/google/googlenav/aa;
.super Lat/a;

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private final a:LaJ/B;

.field private b:B

.field private c:I

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private f:Lau/x;

.field private g:Z

.field private h:I

.field private final i:LK/bf;

.field private final j:Ljava/util/Map;

.field private k:I


# direct methods
.method public constructor <init>(LaJ/B;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    invoke-static {}, LK/bf;->g()LK/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->i:LK/bf;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->j:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/googlenav/aa;->a:LaJ/B;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/aa;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    invoke-static {}, LK/bf;->g()LK/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->i:LK/bf;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->j:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/googlenav/aa;->a:LaJ/B;

    iput-object v0, p0, Lcom/google/googlenav/aa;->a:LaJ/B;

    iget-object v0, p1, Lcom/google/googlenav/aa;->f:Lau/x;

    iput-object v0, p0, Lcom/google/googlenav/aa;->f:Lau/x;

    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bV;

    iget-object v2, p0, Lcom/google/googlenav/aa;->i:LK/bf;

    invoke-virtual {v0}, Lcom/google/googlenav/bV;->g()Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LK/bf;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_5f
    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bW;

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->av()Lcom/google/googlenav/bN;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/aa;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->f()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_81
    iget v0, p1, Lcom/google/googlenav/aa;->k:I

    iput v0, p0, Lcom/google/googlenav/aa;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aa;->g:Z

    return-void
.end method

.method private a(Lcom/google/googlenav/Y;Lcom/google/googlenav/bS;)Lcom/google/googlenav/bS;
    .registers 7

    invoke-virtual {p2}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/googlenav/Y;->i()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p1, v0}, Lcom/google/googlenav/Y;->b(I)Lcom/google/googlenav/bS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private a(Lam/b;LaJ/B;I)V
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p2}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p2}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    invoke-virtual {p1, p3, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/bS;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aa;->i:LK/bf;

    invoke-virtual {v1, v0}, LK/bf;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->h()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_2d

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bS;->a(I)Lcom/google/googlenav/bV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/googlenav/bV;->i()V

    iget-object v4, p0, Lcom/google/googlenav/aa;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x7e

    return v0
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/aa;->b:B

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/aa;->c:I

    return-void
.end method

.method public a(Lau/x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/aa;->f:Lau/x;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/gH;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/aa;->a:LaJ/B;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/aa;->a(Lam/b;LaJ/B;I)V

    iget-object v1, p0, Lcom/google/googlenav/aa;->f:Lau/x;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/aa;->f:Lau/x;

    invoke-virtual {v1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/aa;->a(Lam/b;LaJ/B;I)V

    :cond_1b
    const/4 v1, 0x3

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/aa;->k:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v10, 0x1

    sget-object v0, LbD/gH;->e:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aa;->h:I

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aa;->k:I

    invoke-virtual {v5, v10}, Lam/b;->l(I)I

    move-result v6

    if-nez v6, :cond_1d

    :cond_1c
    return v10

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_24
    if-ge v4, v6, :cond_1c

    new-instance v7, Lcom/google/googlenav/Y;

    invoke-direct {v7, v5, v10, v4}, Lcom/google/googlenav/Y;-><init>(Lam/b;II)V

    invoke-virtual {v7}, Lcom/google/googlenav/Y;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/aa;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Y;

    if-nez v0, :cond_5e

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v7, v3}, Lcom/google/googlenav/Y;->a(I)V

    iget-object v3, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    new-instance v8, Lcom/google/googlenav/bW;

    invoke-direct {v8, v7}, Lcom/google/googlenav/bW;-><init>(Lcom/google/googlenav/bN;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/googlenav/aa;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/google/googlenav/Y;->i()I

    move-result v3

    move v1, v2

    :goto_52
    if-ge v1, v3, :cond_79

    invoke-virtual {v7, v1}, Lcom/google/googlenav/Y;->b(I)Lcom/google/googlenav/bS;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/googlenav/aa;->a(Lcom/google/googlenav/bS;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_5e
    move v1, v2

    :goto_5f
    invoke-virtual {v7}, Lcom/google/googlenav/Y;->i()I

    move-result v8

    if-ge v1, v8, :cond_78

    invoke-virtual {v7, v1}, Lcom/google/googlenav/Y;->b(I)Lcom/google/googlenav/bS;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/google/googlenav/aa;->a(Lcom/google/googlenav/Y;Lcom/google/googlenav/bS;)Lcom/google/googlenav/bS;

    move-result-object v9

    if-nez v9, :cond_75

    invoke-virtual {v0, v8}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/bS;)V

    invoke-direct {p0, v8}, Lcom/google/googlenav/aa;->a(Lcom/google/googlenav/bS;)V

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_78
    move v0, v3

    :cond_79
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_24
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aa;->c:I

    return v0
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/aa;->b:B

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 3

    iget-byte v0, p0, Lcom/google/googlenav/aa;->b:B

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    iget v1, p0, Lcom/google/googlenav/aa;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    goto :goto_d
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aa;->a:LaJ/B;

    return-object v0
.end method

.method public k()Lau/x;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aa;->f:Lau/x;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aa;->g:Z

    return v0
.end method

.method public m()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aa;->k:I

    iget v1, p0, Lcom/google/googlenav/aa;->h:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
