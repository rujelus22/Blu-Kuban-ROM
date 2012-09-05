.class public LaY/t;
.super LaY/m;

# interfaces
.implements LaJ/m;


# instance fields
.field protected C:LaJ/k;

.field private D:Lcom/google/googlenav/layer/m;

.field private E:Z

.field private final F:Lcom/google/googlenav/layer/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaJ/k;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/t;->E:Z

    iput-object p5, p0, LaY/t;->C:LaJ/k;

    new-instance v0, Lcom/google/googlenav/layer/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/layer/s;-><init>(LaY/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V
    .registers 13

    new-instance v5, Lcom/google/googlenav/Q;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/t;->E:Z

    iput-object p5, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    iput-object p6, p0, LaY/t;->C:LaJ/k;

    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/s;-><init>(LaY/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/o;)V
    .registers 13

    new-instance v5, Lcom/google/googlenav/Q;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/t;->E:Z

    iput-object p5, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/s;-><init>(LaY/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method private bH()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, LaY/t;->E:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Q;->a()V

    invoke-virtual {p0}, LaY/t;->e()V

    iput-boolean v0, p0, LaY/t;->E:Z

    invoke-virtual {v1}, Lcom/google/googlenav/Q;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, LaY/t;->Z()V

    :cond_1a
    invoke-virtual {p0}, LaY/t;->R()V

    const/4 v0, 0x1

    :cond_1e
    return v0
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
    .registers 3

    invoke-super {p0}, LaY/m;->X()Z

    invoke-virtual {p0}, LaY/t;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, LaY/t;->bH()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LaY/t;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->b()V

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public Y()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/t;->e(Z)V

    invoke-super {p0}, LaY/m;->Y()V

    return-void
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 2

    iput-object p1, p0, LaY/t;->f:Lcom/google/googlenav/E;

    return-void
.end method

.method public a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    invoke-virtual {p0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Ljava/lang/String;)Lcom/google/googlenav/O;

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V
    .registers 9

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->n()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v3, p0, LaY/t;->c:LaJ/p;

    iget-object v4, p0, LaY/t;->e:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v2, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v2

    iget-object v3, p0, LaY/t;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0}, Lah/f;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, LaY/t;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-interface {v0}, Lah/f;->b()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-interface {v2, v0, v3, v1}, Lah/e;->a(Lah/f;II)V

    :cond_40
    return-void
.end method

.method public a(Ljava/lang/String;[Lam/b;)V
    .registers 4

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a([Lam/b;)V

    :cond_11
    return-void
.end method

.method public a(Ljava/util/Vector;LaJ/B;I)V
    .registers 11

    invoke-virtual {p0}, LaY/t;->a()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, LaY/t;->bH()Z

    :cond_9
    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/Q;->a(LaJ/B;)Ljava/util/Enumeration;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    return-void

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p0, v0, p2}, LaY/t;->a(Lcom/google/googlenav/D;LaJ/B;)J

    move-result-wide v3

    int-to-long v5, p3

    cmp-long v5, v3, v5

    if-gez v5, :cond_14

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v0, v5, v3, v4}, LaY/U;->a(LaY/i;Lcom/google/googlenav/D;IJ)LaY/U;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_48

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :pswitch_9
    invoke-virtual {p0}, LaY/t;->bv()Lcom/google/googlenav/ah;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v0, v2}, Lcom/google/googlenav/T;->a(Z)V

    iget-object v2, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ah;)Lat/g;

    const/4 v2, 0x1

    iput-boolean v2, p0, LaY/t;->x:Z
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1b} :catch_1d

    :goto_1b
    move v0, v1

    goto :goto_8

    :catch_1d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI - null placemark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaY/t;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    nop

    :pswitch_data_48
    .packed-switch 0x1f8
        :pswitch_9
    .end packed-switch
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 7

    sget-object v0, LbD/da;->a:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/layer/m;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/m;-><init>(Lam/b;)V

    iput-object v1, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    new-instance v0, LaJ/k;

    invoke-direct {v0}, LaJ/k;-><init>()V

    iput-object v0, p0, LaY/t;->C:LaJ/k;

    :cond_20
    new-instance v0, Lcom/google/googlenav/Q;

    iget-object v1, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    iget-object v2, p0, LaY/t;->C:LaJ/k;

    iget-object v3, p0, LaY/t;->c:LaJ/p;

    iget-object v4, p0, LaY/t;->d:LaJ/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    iput-object v0, p0, LaY/t;->f:Lcom/google/googlenav/E;

    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aN()Lah/f;
    .registers 3

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    iget-object v1, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, LaY/t;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->aj:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    goto :goto_1a
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aR()V
    .registers 6

    invoke-super {p0}, LaY/m;->aR()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {p0}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v2

    :try_start_f
    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->o()Lam/b;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_29} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_29} :catch_34

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    const-string v3, "UI-CL Error saving LayerInfo"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_29

    :catch_34
    move-exception v0

    const-string v3, "UI-CL OOME saving LayerInfo"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_29
.end method

.method public aV()Z
    .registers 3

    iget-object v0, p0, LaY/t;->C:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->a(LaJ/m;)V

    iget-object v0, p0, LaY/t;->c:LaJ/p;

    iget-object v1, p0, LaY/t;->C:LaJ/k;

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/k;)V

    invoke-virtual {p0}, LaY/t;->j()V

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 3

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    iget-object v0, p0, LaY/t;->C:LaJ/k;

    if-eqz v0, :cond_1b

    iget-object v0, p0, LaY/t;->C:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->b(LaJ/m;)V

    iget-object v0, p0, LaY/t;->C:LaJ/k;

    invoke-virtual {v0}, LaJ/k;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, LaY/t;->c:LaJ/p;

    iget-object v1, p0, LaY/t;->C:LaJ/k;

    invoke-virtual {v0, v1}, LaJ/p;->b(LaJ/k;)V

    :cond_1b
    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->g()V

    invoke-super {p0}, LaY/m;->aW()V

    return-void
.end method

.method protected an()V
    .registers 5

    invoke-virtual {p0}, LaY/t;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, v0

    check-cast v1, Lcom/google/googlenav/T;

    const/16 v2, 0x43

    const-string v3, "o"

    invoke-virtual {v1}, Lcom/google/googlenav/T;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ah;)Lat/g;

    :cond_25
    return-void
.end method

.method protected ar()V
    .registers 1

    return-void
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public b(LaJ/B;)I
    .registers 8

    const/4 v5, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, LaY/t;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, LaY/t;->bH()Z

    :cond_b
    iget-object v0, p0, LaY/t;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-ltz v0, :cond_20

    iget-object v2, p0, LaY/t;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v5}, LaY/t;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1f
    return v0

    :cond_20
    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlenav/Q;->a(LaJ/B;)Ljava/util/Enumeration;

    move-result-object v3

    if-nez v3, :cond_2c

    move v0, v1

    goto :goto_1f

    :cond_2c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p0, v0, p1, v5}, LaY/t;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_47
    move v0, v1

    goto :goto_1f
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method protected by()Z
    .registers 3

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->h()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    invoke-virtual {p0, p1}, LaY/t;->f(Lcom/google/googlenav/D;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/t;->E:Z

    return-void
.end method

.method public d(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, LaY/m;->d(Lcom/google/googlenav/ui/C;)V

    :cond_b
    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget-object v0, p0, LaY/t;->D:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, LaY/m;->e(Lcom/google/googlenav/ui/C;)V

    :cond_b
    return-void
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/c;

    invoke-direct {v0, p0}, Lba/c;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 5

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, LaY/t;->ag()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LaY/t;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "k"

    invoke-virtual {p0, v0, v1, v2}, LaY/t;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/t;->l()V

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public g(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_16

    invoke-super {p0, p1}, LaY/m;->g(I)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    invoke-virtual {p0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected g(Lcom/google/googlenav/ah;)Z
    .registers 3

    iget-object v0, p0, LaY/t;->F:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ah;)Lat/g;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public i()Lcom/google/googlenav/Q;
    .registers 2

    iget-object v0, p0, LaY/t;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/Q;

    return-object v0
.end method

.method protected j()V
    .registers 3

    invoke-virtual {p0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v0

    new-instance v1, LaY/u;

    invoke-direct {v1, p0}, LaY/u;-><init>(LaY/t;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/Q;->a(Lcom/google/googlenav/S;)V

    return-void
.end method

.method protected k()V
    .registers 1

    return-void
.end method
