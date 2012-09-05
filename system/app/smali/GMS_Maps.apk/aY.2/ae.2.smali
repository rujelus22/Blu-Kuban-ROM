.class public LaY/ae;
.super LaY/i;


# instance fields
.field private w:Z

.field private x:[Lcom/google/googlenav/ui/aR;

.field private y:Lbb/d;

.field private z:Lbb/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V
    .registers 11

    new-instance v5, LaY/ah;

    invoke-direct {v5}, LaY/ah;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaY/i;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/ae;->w:Z

    invoke-direct {p0}, LaY/ae;->e()V

    return-void
.end method

.method static synthetic a(LaY/ae;)V
    .registers 1

    invoke-direct {p0}, LaY/ae;->e()V

    return-void
.end method

.method private bg()LaY/ah;
    .registers 2

    invoke-virtual {p0}, LaY/ae;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, LaY/ah;

    return-object v0
.end method

.method private bh()V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v0

    invoke-virtual {v0}, LaY/ah;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ae;->x:[Lcom/google/googlenav/ui/aR;

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v0

    invoke-virtual {v0}, LaY/ah;->f()I

    move-result v0

    new-array v2, v0, [LaJ/B;

    move v0, v1

    :goto_1b
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v3

    invoke-virtual {v3, v0}, LaY/ah;->d(I)LaY/ai;

    move-result-object v3

    invoke-virtual {v3}, LaY/ai;->a()LaJ/B;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aR;

    new-instance v3, LaJ/M;

    const v4, -0xd5ba98

    const/4 v5, 0x5

    invoke-direct {v3, v2, v4, v5}, LaJ/M;-><init>([LaJ/B;II)V

    aput-object v3, v0, v1

    iput-object v0, p0, LaY/ae;->x:[Lcom/google/googlenav/ui/aR;

    iget-object v0, p0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    goto :goto_f
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, LaY/ae;->w:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, LaY/ae;->i()V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, LaY/af;

    invoke-direct {v2, p0}, LaY/af;-><init>(LaY/ae;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/ae;->z:Lbb/d;

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, LaY/ae;->j()V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0x9

    new-instance v2, LaY/ag;

    invoke-direct {v2, p0}, LaY/ag;-><init>(LaY/ae;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/ae;->y:Lbb/d;

    goto :goto_19
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, LaY/ae;->y:Lbb/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/ae;->y:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ae;->y:Lbb/d;

    :cond_c
    return-void
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, LaY/ae;->z:Lbb/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/ae;->z:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ae;->z:Lbb/d;

    :cond_c
    return-void
.end method


# virtual methods
.method protected O()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 2

    invoke-super {p0}, LaY/i;->X()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    iput-object p1, p0, LaY/ae;->f:Lcom/google/googlenav/E;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/ae;->b(I)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ae;->x:[Lcom/google/googlenav/ui/aR;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LaY/ae;->w:Z

    return v0
.end method

.method protected a(Laq/c;Z)Z
    .registers 6

    iget-boolean v0, p0, LaY/ae;->w:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Laq/c;->h()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, LaY/ae;->c:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/ae;->d(LaJ/B;)Z

    move-result v0

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public aE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aW()V
    .registers 1

    invoke-super {p0}, LaY/i;->aW()V

    invoke-direct {p0}, LaY/ae;->j()V

    invoke-direct {p0}, LaY/ae;->i()V

    return-void
.end method

.method protected aq()V
    .registers 1

    return-void
.end method

.method protected ar()V
    .registers 1

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x13

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/ae;->w:Z

    const/16 v0, 0x47

    const-string v1, "u-start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LaB/e;->a:LaB/e;

    invoke-virtual {v3}, LaB/e;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c()I
    .registers 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v1

    invoke-virtual {v1}, LaY/ah;->f()I

    move-result v1

    if-le v1, v0, :cond_39

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v1

    invoke-virtual {v1, v2}, LaY/ah;->d(I)LaY/ai;

    move-result-object v1

    invoke-virtual {v1}, LaY/ai;->a()LaJ/B;

    move-result-object v1

    move v3, v2

    :goto_19
    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v2

    invoke-virtual {v2}, LaY/ah;->f()I

    move-result v2

    if-ge v0, v2, :cond_3a

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v2

    invoke-virtual {v2, v0}, LaY/ah;->d(I)LaY/ai;

    move-result-object v2

    invoke-virtual {v2}, LaY/ai;->a()LaJ/B;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move-object v1, v2

    goto :goto_19

    :cond_39
    move v3, v2

    :cond_3a
    return v3
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public d(LaJ/B;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, LaY/ae;->w:Z

    if-eqz v2, :cond_18

    iget-object v2, p0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v2

    invoke-virtual {v2}, LaY/Y;->I()LaY/i;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, LaY/i;->aj()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    move v0, v1

    :cond_19
    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v2

    new-instance v3, LaY/ai;

    invoke-direct {v3, p1}, LaY/ai;-><init>(LaJ/B;)V

    invoke-virtual {v2, v3}, LaY/ah;->a(LaY/ai;)V

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v2

    invoke-virtual {v2}, LaY/ah;->f()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    const/16 v2, 0x47

    const-string v3, "u-add"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, LaB/e;->a:LaB/e;

    invoke-virtual {v5}, LaB/e;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_51
    invoke-direct {p0}, LaY/ae;->bh()V

    invoke-virtual {p0}, LaY/ae;->R()V

    invoke-virtual {p0}, LaY/ae;->c()I

    move-result v2

    if-lez v2, :cond_19

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/w;->b(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    const/16 v4, 0x25d

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    iget-object v0, p0, LaY/ae;->x:[Lcom/google/googlenav/ui/aR;

    return-object v0
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/f;

    invoke-direct {v0, p0}, Lba/f;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected i(Z)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/ae;->w:Z

    if-eqz p1, :cond_3e

    const/16 v0, 0x47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u-stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v2

    invoke-virtual {v2}, LaY/ah;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LaB/e;->a:LaB/e;

    invoke-virtual {v3}, LaB/e;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_3e
    invoke-direct {p0}, LaY/ae;->bg()LaY/ah;

    move-result-object v0

    invoke-virtual {v0}, LaY/ah;->a()V

    invoke-virtual {p0}, LaY/ae;->R()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ae;->x:[Lcom/google/googlenav/ui/aR;

    iget-object v0, p0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    invoke-direct {p0}, LaY/ae;->e()V

    return-void
.end method
