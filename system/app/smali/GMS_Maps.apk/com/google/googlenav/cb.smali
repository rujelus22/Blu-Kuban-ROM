.class public Lcom/google/googlenav/cb;
.super Lat/a;


# instance fields
.field a:Z

.field b:Ljava/util/List;

.field private final c:I

.field private final d:J

.field private final e:Lcom/google/googlenav/cc;

.field private f:I


# direct methods
.method public constructor <init>(IJLcom/google/googlenav/cc;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/cb;->b:Ljava/util/List;

    iput p1, p0, Lcom/google/googlenav/cb;->c:I

    iput-wide p2, p0, Lcom/google/googlenav/cb;->d:J

    iput-object p4, p0, Lcom/google/googlenav/cb;->e:Lcom/google/googlenav/cc;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x73

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbD/hE;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlenav/cb;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/cb;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LbD/hE;->f:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_15

    iput-boolean v2, p0, Lcom/google/googlenav/cb;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/cb;->f:I

    :cond_14
    return v1

    :cond_15
    invoke-virtual {v3, v1}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/cb;->f:I

    iget v0, p0, Lcom/google/googlenav/cb;->f:I

    if-nez v0, :cond_3e

    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/google/googlenav/cb;->a:Z

    iget-boolean v0, p0, Lcom/google/googlenav/cb;->a:Z

    if-eqz v0, :cond_14

    invoke-virtual {v3, v5}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_2c
    invoke-virtual {v3, v5}, Lam/b;->l(I)I

    move-result v0

    if-ge v2, v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/cb;->b:Ljava/util/List;

    invoke-virtual {v3, v5, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3e
    move v0, v2

    goto :goto_20
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/cb;->e:Lcom/google/googlenav/cc;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/cb;->e:Lcom/google/googlenav/cc;

    iget-boolean v1, p0, Lcom/google/googlenav/cb;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/cb;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/cc;->a(ZLjava/util/List;)V

    :cond_d
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/cb;->e:Lcom/google/googlenav/cc;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/cb;->e:Lcom/google/googlenav/cc;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/cc;->a(ZLjava/util/List;)V

    :cond_f
    return-void
.end method
