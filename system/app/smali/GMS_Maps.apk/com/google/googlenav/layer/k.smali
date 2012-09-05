.class public Lcom/google/googlenav/layer/k;
.super Lat/a;


# instance fields
.field private final a:LaJ/H;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/l;

.field private f:Lam/b;


# direct methods
.method public constructor <init>(LaJ/H;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/k;->a:LaJ/H;

    iput p2, p0, Lcom/google/googlenav/layer/k;->b:I

    iput p3, p0, Lcom/google/googlenav/layer/k;->c:I

    iput-object p4, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x39

    return v0
.end method

.method public a(Lcom/google/googlenav/layer/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/layer/k;->e:Lcom/google/googlenav/layer/l;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/da;->n:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->f()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lam/b;->h(II)V

    :cond_15
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_27
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_39

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lam/b;->b(IJ)V

    :cond_39
    iget-object v1, p0, Lcom/google/googlenav/layer/k;->a:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/layer/k;->b:I

    iget v3, p0, Lcom/google/googlenav/layer/k;->c:I

    iget-object v4, p0, Lcom/google/googlenav/layer/k;->a:LaJ/H;

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-virtual {v4}, LaJ/Y;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_63
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/da;->o:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/k;->f:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/layer/k;->f:Lam/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/k;->f:Lam/b;

    iget-object v2, p0, Lcom/google/googlenav/layer/k;->e:Lcom/google/googlenav/layer/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/layer/f;->a(Lam/b;Lcom/google/googlenav/layer/l;)V

    goto :goto_4
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
