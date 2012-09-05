.class public Lau/v;
.super Lau/b;


# instance fields
.field private m:I

.field private n:I

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Lau/k;Lcom/google/googlenav/ui/x;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lau/b;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    const/4 v0, -0x1

    iput v0, p0, Lau/v;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lau/v;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/x;)V
    .registers 3

    invoke-direct {p0, p1}, Lau/b;-><init>(Lcom/google/googlenav/ui/x;)V

    const/4 v0, -0x1

    iput v0, p0, Lau/v;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lau/v;->b:I

    return-void
.end method


# virtual methods
.method protected K()Lam/b;
    .registers 4

    invoke-super {p0}, Lau/b;->K()Lam/b;

    move-result-object v0

    iget-boolean v1, p0, Lau/v;->p:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    :cond_e
    return-object v0
.end method

.method M()I
    .registers 2

    iget v0, p0, Lau/v;->m:I

    return v0
.end method

.method public W()V
    .registers 2

    invoke-super {p0}, Lau/b;->W()V

    invoke-virtual {p0}, Lau/v;->aa()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lau/v;->n:I

    :cond_c
    return-void
.end method

.method public Y()V
    .registers 2

    invoke-super {p0}, Lau/b;->Y()V

    invoke-virtual {p0}, Lau/v;->aa()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lau/v;->n:I

    :cond_c
    return-void
.end method

.method public a(ILcom/google/googlenav/ui/x;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lau/v;->a(ILcom/google/googlenav/ui/x;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/googlenav/ui/x;Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->s()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p3, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_18
    invoke-virtual {v0}, Lau/m;->p()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p3, :cond_2d

    invoke-virtual {p0, p1}, Lau/v;->f(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/x;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2d
    const-string v0, ""

    goto :goto_10

    :cond_30
    invoke-virtual {p0, p1}, Lau/v;->f(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/x;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public a(Lau/m;)Ljava/lang/String;
    .registers 6

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-virtual {p1}, Lau/m;->o()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->f()Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->f()Lam/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lam/b;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lau/v;->k(I)Lam/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/bw;->A:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    return-object v0

    :cond_50
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_56
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public a(I)V
    .registers 3

    invoke-super {p0, p1}, Lau/b;->a(I)V

    invoke-virtual {p0}, Lau/v;->c()I

    move-result v0

    iput v0, p0, Lau/v;->n:I

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lau/v;->d(I)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lau/v;->f:Lam/b;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lau/v;->f:Lam/b;

    invoke-virtual {v0, v7, v1}, Lam/b;->b(ILam/b;)V

    iget v1, p0, Lau/v;->g:I

    invoke-virtual {v0, v8, v1}, Lam/b;->h(II)V

    :cond_15
    :goto_15
    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lau/v;->u()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v6}, Lam/b;->b(IZ)V

    invoke-virtual {p0}, Lau/v;->al()I

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x8

    invoke-virtual {p0}, Lau/v;->al()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lau/v;->o:J

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_43
    invoke-virtual {p0}, Lau/v;->T()Lau/l;

    move-result-object v1

    invoke-virtual {v1}, Lau/l;->b()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lam/b;

    sget-object v2, LbD/i;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/bq;->a()I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    invoke-virtual {p0}, Lau/v;->T()Lau/l;

    move-result-object v2

    invoke-virtual {v2}, Lau/l;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Lam/b;->b(IJ)V

    invoke-virtual {v0, v7, v1}, Lam/b;->b(ILam/b;)V

    invoke-virtual {p0}, Lau/v;->T()Lau/l;

    move-result-object v1

    invoke-virtual {v1}, Lau/l;->d()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lam/b;->h(II)V

    goto :goto_15
.end method

.method public aM()Lau/b;
    .registers 4

    new-instance v0, Lau/v;

    invoke-virtual {p0}, Lau/v;->ar()Lau/j;

    move-result-object v1

    invoke-virtual {p0}, Lau/v;->I()Lcom/google/googlenav/ui/x;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    return-object v0
.end method

.method public aW()I
    .registers 2

    iget v0, p0, Lau/v;->n:I

    return v0
.end method

.method public aX()J
    .registers 3

    iget-wide v0, p0, Lau/v;->o:J

    return-wide v0
.end method

.method public aY()Z
    .registers 2

    iget-boolean v0, p0, Lau/v;->p:Z

    return v0
.end method

.method public aZ()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lau/v;->ad()Lau/h;

    move-result-object v3

    if-eqz v3, :cond_1a

    move v0, v1

    :goto_9
    invoke-virtual {v3}, Lau/h;->e()I

    move-result v4

    if-ge v0, v4, :cond_1a

    invoke-virtual {v3, v0}, Lau/h;->b(I)Lau/s;

    move-result-object v4

    invoke-virtual {v4}, Lau/s;->C()I

    move-result v4

    if-ne v4, v2, :cond_1b

    move v1, v2

    :cond_1a
    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lau/v;->p:Z

    return-void
.end method

.method protected c(Lam/b;)Z
    .registers 4

    invoke-super {p0, p1}, Lau/b;->c(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lam/b;->b(I)Z

    move-result v1

    iput-boolean v1, p0, Lau/v;->p:Z

    :cond_e
    return v0
.end method

.method public p()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public s(I)V
    .registers 3

    invoke-virtual {p0}, Lau/v;->aB()I

    move-result v0

    if-eq v0, p1, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lau/v;->n:I

    :cond_9
    invoke-super {p0, p1}, Lau/b;->s(I)V

    return-void
.end method

.method public v()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public w(I)V
    .registers 2

    iput p1, p0, Lau/v;->m:I

    return-void
.end method
