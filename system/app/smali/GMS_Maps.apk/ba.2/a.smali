.class public Lba/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:LaY/i;

.field protected b:Lcom/google/googlenav/ui/bw;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/a;->a:LaY/i;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lba/a;->b:Lcom/google/googlenav/ui/bw;

    return-void
.end method

.method private static c(Lcom/google/googlenav/D;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/googlenav/D;->d()I

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p0, Lcom/google/googlenav/ah;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bh()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_16
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(ZBI)C
    .registers 5

    const/16 v0, 0x20

    return v0
.end method

.method public a(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, Lba/a;->b:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(B)I

    move-result v0

    return v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected a(I)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->w()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lba/a;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_c

    :cond_1b
    invoke-interface {v0}, Lcom/google/googlenav/D;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_c

    :cond_27
    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v2

    invoke-virtual {v2}, Lr/l;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_c

    :cond_37
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr/l;->c(Lt/y;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    goto :goto_c

    :cond_53
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, Lba/a;->b:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(B)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lba/a;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    if-nez v2, :cond_1a

    :cond_19
    :goto_19
    return-object v1

    :cond_1a
    invoke-static {v0}, Lba/a;->c(Lcom/google/googlenav/D;)Z

    move-result v2

    if-eqz v2, :cond_3f

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v3

    if-eqz v3, :cond_3d

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v1

    :cond_32
    iget-object v2, p0, Lba/a;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->c()B

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/bw;->a(BLah/f;)Lcom/google/googlenav/e;

    move-result-object v1

    goto :goto_19

    :cond_3d
    move-object v1, v2

    goto :goto_19

    :cond_3f
    invoke-interface {v0}, Lcom/google/googlenav/D;->d()I

    move-result v1

    if-nez v1, :cond_4f

    move-object v1, v0

    check-cast v1, Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->ai()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 p1, -0x1

    :cond_4f
    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lba/a;->a(ZBI)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_67

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v0

    :goto_60
    iget-object v2, p0, Lba/a;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/bw;->a(BC)Lcom/google/googlenav/e;

    move-result-object v1

    goto :goto_19

    :cond_67
    invoke-static {v1}, Lcom/google/googlenav/ui/aY;->j(C)B

    move-result v0

    goto :goto_60
.end method
