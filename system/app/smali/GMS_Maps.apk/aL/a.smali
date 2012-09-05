.class public LaL/a;
.super Lat/a;


# instance fields
.field private a:[LaL/c;

.field private b:[LaL/c;

.field private c:I

.field private d:LaL/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaL/a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, LaL/a;->d:LaL/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public a(LaL/b;)V
    .registers 2

    iput-object p1, p0, LaL/a;->d:LaL/b;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/hx;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    sget-object v0, LbD/hx;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    iput-object v2, p0, LaL/a;->a:[LaL/c;

    iput-object v2, p0, LaL/a;->b:[LaL/c;

    invoke-virtual {v1, v7}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, LaL/a;->c:I

    iget v0, p0, LaL/a;->c:I

    if-eqz v0, :cond_18

    :goto_17
    return v7

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v8}, Lam/b;->l(I)I

    move-result v4

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v4, :cond_48

    new-instance v5, LaL/c;

    invoke-virtual {v1, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-direct {v5, v6}, LaL/c;-><init>(Lam/b;)V

    invoke-virtual {v5}, LaL/c;->d()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3e
    invoke-virtual {v5}, LaL/c;->e()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LaL/c;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaL/c;

    iput-object v0, p0, LaL/a;->a:[LaL/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LaL/c;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaL/c;

    iput-object v0, p0, LaL/a;->b:[LaL/c;

    goto :goto_17
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, LaL/a;->d:LaL/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, LaL/a;->a:[LaL/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaL/a;->b:[LaL/c;

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, LaL/a;->d:LaL/b;

    invoke-interface {v0}, LaL/b;->R_()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, LaL/a;->d:LaL/b;

    iget-object v1, p0, LaL/a;->a:[LaL/c;

    iget-object v2, p0, LaL/a;->b:[LaL/c;

    invoke-interface {v0, v1, v2}, LaL/b;->a([LaL/c;[LaL/c;)V

    goto :goto_11
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 3

    iget v0, p0, LaL/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public l()Z
    .registers 3

    iget v0, p0, LaL/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
