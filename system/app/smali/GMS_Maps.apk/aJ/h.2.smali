.class public LaJ/h;
.super LaJ/u;


# instance fields
.field private final c:Z

.field private final d:LaJ/p;

.field private final e:Lcom/google/googlenav/ui/bQ;

.field private f:LaJ/s;


# direct methods
.method public constructor <init>(LaJ/p;Lcom/google/googlenav/ui/bQ;Lcom/google/googlenav/ui/A;Z)V
    .registers 7

    invoke-direct {p0}, LaJ/u;-><init>()V

    iput-object p1, p0, LaJ/h;->d:LaJ/p;

    iput-object p2, p0, LaJ/h;->e:Lcom/google/googlenav/ui/bQ;

    iput-boolean p4, p0, LaJ/h;->c:Z

    if-eqz p2, :cond_13

    new-instance v0, LaJ/i;

    invoke-direct {v0, p0}, LaJ/i;-><init>(LaJ/h;)V

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/bQ;->a(Lcom/google/googlenav/ui/bR;)V

    :cond_13
    if-eqz p3, :cond_1d

    new-instance v0, LaJ/j;

    invoke-direct {v0, p0}, LaJ/j;-><init>(LaJ/h;)V

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/A;->a(Lcom/google/googlenav/ui/B;)V

    :cond_1d
    invoke-virtual {p1}, LaJ/p;->r()I

    move-result v0

    invoke-virtual {p1}, LaJ/p;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LaJ/h;->c(II)V

    return-void
.end method

.method private g(LaJ/B;)Z
    .registers 5

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->d(LaJ/B;)Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, LaJ/h;->c:Z

    if-eqz v1, :cond_2c

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->r()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    if-ge v1, v2, :cond_2c

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->q()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, LaJ/h;->e:Lcom/google/googlenav/ui/bQ;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaJ/h;->e:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bQ;->c()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(ILaJ/B;)F
    .registers 4

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->c(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a()I
    .registers 2

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->l()I

    move-result v0

    return v0
.end method

.method public a(LaJ/B;)I
    .registers 3

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->f(LaJ/B;)I

    move-result v0

    return v0
.end method

.method public a(LaJ/H;)I
    .registers 3

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->b(LaJ/H;)I

    move-result v0

    return v0
.end method

.method protected a(LaJ/B;LaJ/Y;II)LaJ/B;
    .registers 6

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1, p2, p3, p4}, LaJ/p;->a(LaJ/B;LaJ/Y;II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    invoke-direct {p0}, LaJ/h;->p()V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->b(I)V

    return-void
.end method

.method public a(II)V
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, LaJ/h;->h()V

    invoke-direct {p0}, LaJ/h;->p()V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, LaJ/h;->a(ZZZ)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->c()LaJ/Y;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, LaJ/s;->a(LaJ/B;IILaJ/Y;)LaJ/s;

    move-result-object v0

    iput-object v0, p0, LaJ/h;->f:LaJ/s;

    return-void
.end method

.method public a(LaJ/B;LaJ/Y;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaJ/h;->d(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method protected a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V
    .registers 6

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1, p2, p3, p4}, LaJ/p;->a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V

    return-void
.end method

.method protected a(LaJ/B;Landroid/graphics/Point;)V
    .registers 4

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1, p2}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    return-void
.end method

.method protected a(LaJ/Y;II)V
    .registers 7

    iget-object v0, p0, LaJ/h;->e:Lcom/google/googlenav/ui/bQ;

    if-nez v0, :cond_15

    invoke-static {}, Lar/r;->a()V

    invoke-virtual {p0, p2, p3}, LaJ/h;->b(II)LaJ/B;

    move-result-object v0

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {v0, v1, v2, p1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LaJ/h;->e(LaJ/B;LaJ/Y;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, LaJ/h;->e:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/bQ;->a(LaJ/Y;II)V

    goto :goto_14
.end method

.method public a(Lt/y;)V
    .registers 2

    return-void
.end method

.method public a([LaJ/B;IIILaJ/Y;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p5}, LaJ/h;->a(LaJ/Y;)V

    invoke-direct {p0}, LaJ/h;->p()V

    aget-object v0, p1, p3

    iget-object v2, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v2, v0}, LaJ/p;->e(LaJ/B;)V

    invoke-direct {p0, v0}, LaJ/h;->g(LaJ/B;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, LaJ/h;->h()V

    invoke-virtual {p0}, LaJ/h;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v0, v2}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0, v6, v1}, LaJ/h;->a(ZZZ)V

    new-instance v0, LaJ/s;

    int-to-long v1, p4

    sget-wide v3, LaJ/s;->a:J

    mul-long v4, v1, v3

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, LaJ/s;-><init>([LaJ/B;IIJI)V

    iput-object v0, p0, LaJ/h;->f:LaJ/s;

    goto :goto_4

    :cond_39
    move v0, v6

    goto :goto_26

    :cond_3b
    invoke-virtual {p0, v0}, LaJ/h;->c(LaJ/B;)V

    goto :goto_4
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->m()I

    move-result v0

    return v0
.end method

.method public b(LaJ/H;)I
    .registers 3

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->c(LaJ/H;)I

    move-result v0

    return v0
.end method

.method public b(II)LaJ/B;
    .registers 4

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1, p2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method protected b(LaJ/B;LaJ/Y;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LaJ/h;->h()V

    invoke-direct {p0}, LaJ/h;->p()V

    if-nez p2, :cond_e

    invoke-virtual {p0}, LaJ/h;->d()LaJ/Y;

    move-result-object p2

    :cond_e
    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p2}, LaJ/p;->a(LaJ/Y;)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {p1, v2, v2, v0}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v4

    invoke-direct {p0, v4}, LaJ/h;->g(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, LaJ/h;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {v4, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_2e
    invoke-virtual {p0}, LaJ/h;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    move v3, v1

    :goto_39
    invoke-virtual {p0, v0, v3, v1}, LaJ/h;->a(ZZZ)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, v4}, LaJ/p;->e(LaJ/B;)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->c()LaJ/Y;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lar/i;->c(I)I

    move-result v0

    new-instance v1, LaJ/s;

    iget-object v3, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v3}, LaJ/p;->d()LaJ/B;

    move-result-object v3

    invoke-static {v0}, LaJ/h;->b(I)I

    move-result v0

    invoke-direct {v1, v3, v4, v0, v2}, LaJ/s;-><init>(LaJ/B;LaJ/B;II)V

    iput-object v1, p0, LaJ/h;->f:LaJ/s;

    :goto_67
    return-void

    :cond_68
    move v0, v2

    goto :goto_2e

    :cond_6a
    move v3, v2

    goto :goto_39

    :cond_6c
    invoke-virtual {p0, v4}, LaJ/h;->c(LaJ/B;)V

    goto :goto_67
.end method

.method public c()LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method protected c(LaJ/B;LaJ/Y;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LaJ/h;->h()V

    invoke-direct {p0}, LaJ/h;->p()V

    invoke-virtual {p0}, LaJ/h;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p1, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v1

    :goto_13
    invoke-virtual {p0}, LaJ/h;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    :goto_1d
    invoke-virtual {p0, v0, v1, v2}, LaJ/h;->a(ZZZ)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->b(LaJ/B;)V

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0, p2}, LaJ/p;->a(LaJ/Y;)V

    invoke-virtual {p0}, LaJ/h;->l()V

    return-void

    :cond_2e
    move v0, v2

    goto :goto_13

    :cond_30
    move v1, v2

    goto :goto_1d
.end method

.method public d()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()LaJ/H;
    .registers 2

    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->b()LaJ/H;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, LaJ/h;->f:LaJ/s;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaJ/h;->f:LaJ/s;

    invoke-virtual {v0}, LaJ/s;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, LaJ/h;->h()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, LaJ/h;->d:LaJ/p;

    iget-object v1, p0, LaJ/h;->f:LaJ/s;

    invoke-virtual {v1}, LaJ/s;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/p;->b(LaJ/B;)V

    goto :goto_f
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, LaJ/h;->f:LaJ/s;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/h;->f:LaJ/s;

    invoke-virtual {p0}, LaJ/h;->l()V

    :cond_a
    return-void
.end method

.method public i()Z
    .registers 3

    invoke-virtual {p0}, LaJ/h;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->c()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    invoke-virtual {p0}, LaJ/h;->c()LaJ/B;

    move-result-object v1

    invoke-virtual {p0, v1}, LaJ/h;->a(LaJ/B;)I

    move-result v1

    if-lt v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public j()Z
    .registers 3

    invoke-virtual {p0}, LaJ/h;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    invoke-static {}, LaJ/Y;->e()I

    move-result v1

    if-gt v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, LaJ/h;->f:LaJ/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
