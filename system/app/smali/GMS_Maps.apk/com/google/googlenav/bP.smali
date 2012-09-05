.class public Lcom/google/googlenav/bP;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;

.field private final b:I

.field private final c:Z

.field private final d:I


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 5

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bP;->a:Lam/b;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bP;->d:I

    invoke-static {p1, v2}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bP;->b:I

    invoke-virtual {p1, v2}, Lam/b;->k(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/bP;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bP;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bP;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/bP;)Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bP;->a:Lam/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x1518

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1e

    move v0, v1

    :goto_13
    iget-boolean v3, p0, Lcom/google/googlenav/bP;->c:Z

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/google/googlenav/bP;->d:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    :goto_1c
    and-int/2addr v0, v1

    :cond_1d
    return v0

    :cond_1e
    move v0, v2

    goto :goto_13

    :cond_20
    move v1, v2

    goto :goto_1c
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bP;->c:Z

    return v0
.end method

.method public c()J
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/bP;->f()J

    move-result-wide v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Lam/b;
    .registers 6

    const/4 v4, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/i;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/bP;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    iget-object v1, p0, Lcom/google/googlenav/bP;->a:Lam/b;

    invoke-virtual {v1, v4}, Lam/b;->d(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lam/b;->h(II)V

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bP;->d:I

    return v0
.end method

.method public f()J
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/bP;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->e(I)J

    move-result-wide v0

    iget v2, p0, Lcom/google/googlenav/bP;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
