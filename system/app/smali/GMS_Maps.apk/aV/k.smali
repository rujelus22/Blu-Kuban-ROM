.class LaV/k;
.super Lat/a;


# instance fields
.field final synthetic a:LaV/i;

.field private final b:Lar/u;

.field private final c:Lam/b;

.field private final d:LaJ/B;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Lam/b;


# direct methods
.method public constructor <init>(LaV/i;Ljava/lang/String;Lam/b;LaJ/B;I)V
    .registers 10

    iput-object p1, p0, LaV/k;->a:LaV/i;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, LaV/k;->e:Ljava/lang/String;

    iput-object p3, p0, LaV/k;->c:Lam/b;

    iput-object p4, p0, LaV/k;->d:LaJ/B;

    iput p5, p0, LaV/k;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteSuggest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lar/u;

    const-string v2, "rsd"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, LaV/k;->b:Lar/u;

    iget-object v0, p0, LaV/k;->b:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    return-void
.end method

.method private a(I)I
    .registers 3

    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-static {v0}, LaV/i;->d(LaV/i;)I

    move-result v0

    return v0
.end method

.method private k()LaV/r;
    .registers 16

    const/4 v10, 0x0

    const/4 v14, 0x7

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x2

    new-instance v11, LaV/r;

    iget-object v1, p0, LaV/k;->g:Lam/b;

    invoke-virtual {v1, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, LaV/r;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LaV/k;->g:Lam/b;

    invoke-virtual {v1, v13}, Lam/b;->l(I)I

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, LaV/k;->g:Lam/b;

    invoke-virtual {v1, v13, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v12

    move v9, v0

    :goto_1f
    invoke-virtual {v12, v13}, Lam/b;->l(I)I

    move-result v0

    if-ge v9, v0, :cond_5e

    invoke-virtual {v12, v13, v9}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v4

    invoke-virtual {v0, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    move-object v3, v1

    :goto_3f
    invoke-virtual {v0, v14}, Lam/b;->k(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v0, v14}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->b(Lam/b;)LaJ/B;

    move-result-object v8

    :goto_4d
    new-instance v0, LaV/q;

    invoke-direct {p0, v4}, LaV/k;->a(I)I

    move-result v6

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    invoke-virtual {v11, v0}, LaV/r;->a(LaV/q;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1f

    :cond_5e
    return-object v11

    :cond_5f
    move-object v8, v10

    goto :goto_4d

    :cond_61
    move-object v3, v10

    goto :goto_3f
.end method


# virtual methods
.method public X()V
    .registers 2

    invoke-super {p0}, Lat/a;->X()V

    iget-object v0, p0, LaV/k;->b:Lar/u;

    invoke-virtual {v0}, Lar/u;->c()V

    return-void
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x4c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/gd;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x5

    iget-object v2, p0, LaV/k;->a:LaV/i;

    invoke-static {v2}, LaV/i;->c(LaV/i;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget v1, p0, LaV/k;->f:I

    if-eqz v1, :cond_1c

    const/4 v1, 0x4

    iget v2, p0, LaV/k;->f:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_1c
    iget-object v1, p0, LaV/k;->c:Lam/b;

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    iget-object v2, p0, LaV/k;->c:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_26
    iget-object v1, p0, LaV/k;->d:LaJ/B;

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget-object v2, p0, LaV/k;->d:LaJ/B;

    invoke-static {v2}, LaJ/C;->c(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_34
    iget-object v1, p0, LaV/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Lam/b;->b(IZ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/gd;->d:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaV/k;->g:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 4

    const/4 v1, 0x3

    iget-object v0, p0, LaV/k;->g:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LaV/k;->g:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_1c
    iget-object v0, p0, LaV/k;->b:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-static {v0}, LaV/i;->b(LaV/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, LaV/k;->h_()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    :goto_33
    return-void

    :cond_34
    monitor-enter p0

    :goto_35
    :try_start_35
    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-static {v0}, LaV/i;->b(LaV/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4f

    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-static {v0}, LaV/i;->b(LaV/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/k;

    if-ne v0, p0, :cond_62

    :cond_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_66

    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-virtual {v0}, LaV/i;->e()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LaV/k;->a:LaV/i;

    invoke-direct {p0}, LaV/k;->k()LaV/r;

    move-result-object v1

    invoke-virtual {v0, v1}, LaV/i;->a(LaV/r;)V

    goto :goto_33

    :cond_62
    :try_start_62
    invoke-virtual {v0}, LaV/k;->X()V

    goto :goto_35

    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
