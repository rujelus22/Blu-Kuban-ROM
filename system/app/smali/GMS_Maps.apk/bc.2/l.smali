.class public Lbc/l;
.super Lbc/h;


# instance fields
.field private final d:Lau/s;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V
    .registers 12

    sget-object v1, Lbc/q;->a:Lbc/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbc/h;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    iput-object p3, p0, Lbc/l;->d:Lau/s;

    invoke-virtual {p0}, Lbc/l;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    iget-object v0, p0, Lbc/l;->b:Lau/v;

    iget v1, p0, Lbc/l;->c:I

    invoke-static {v0, v1, p0}, Lbc/h;->b(Lau/v;ILbc/h;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3e4

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/l;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lbc/l;->l()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lbc/l;->n()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lbc/l;->l()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lbc/l;->o()I

    move-result v2

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v1, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public s()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/l;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->o()LaJ/B;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lbc/l;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->g()LaJ/B;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbc/l;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->o()LaJ/B;

    move-result-object v0

    goto :goto_e
.end method

.method public t()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/l;->d:Lau/s;

    if-nez v0, :cond_b

    iget-object v0, p0, Lbc/l;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aE()LaJ/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbc/l;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->g()LaJ/B;

    move-result-object v0

    goto :goto_a
.end method

.method public u()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbc/l;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lbc/l;->d:Lau/s;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lbc/l;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lbc/l;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lbc/l;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->au()Lau/x;

    move-result-object v0

    invoke-static {v0}, Lbc/l;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
