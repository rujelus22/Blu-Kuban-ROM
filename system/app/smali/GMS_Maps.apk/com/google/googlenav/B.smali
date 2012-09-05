.class public Lcom/google/googlenav/B;
.super Lat/a;


# instance fields
.field a:Z

.field b:Ljava/util/List;

.field private final c:J

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/googlenav/C;

.field private f:I


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/google/googlenav/C;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/B;->b:Ljava/util/List;

    iput-wide p1, p0, Lcom/google/googlenav/B;->c:J

    iput-object p3, p0, Lcom/google/googlenav/B;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/googlenav/B;->e:Lcom/google/googlenav/C;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x78

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    new-instance v1, Lam/b;

    sget-object v0, LbD/hE;->g:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/B;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lam/b;->b(IJ)V

    iget-object v0, p0, Lcom/google/googlenav/B;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lam/b;->a(IJ)V

    goto :goto_13

    :cond_28
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/hE;->h:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->k(I)Z

    move-result v3

    if-nez v3, :cond_14

    iput-boolean v0, p0, Lcom/google/googlenav/B;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/B;->f:I

    :goto_13
    return v1

    :cond_14
    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/B;->f:I

    iget v2, p0, Lcom/google/googlenav/B;->f:I

    if-nez v2, :cond_1f

    move v0, v1

    :cond_1f
    iput-boolean v0, p0, Lcom/google/googlenav/B;->a:Z

    goto :goto_13
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/B;->e:Lcom/google/googlenav/C;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/B;->e:Lcom/google/googlenav/C;

    iget-boolean v1, p0, Lcom/google/googlenav/B;->a:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/C;->a(Z)V

    :cond_b
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/B;->e:Lcom/google/googlenav/C;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/B;->e:Lcom/google/googlenav/C;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/C;->a(Z)V

    :cond_a
    return-void
.end method
