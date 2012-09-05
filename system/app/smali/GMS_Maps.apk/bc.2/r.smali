.class public Lbc/r;
.super Lbc/s;


# instance fields
.field private final e:Lau/t;

.field private final f:Lau/t;


# direct methods
.method public constructor <init>(Lau/s;Lau/t;Lau/t;ILjava/util/List;)V
    .registers 12

    sget-object v1, Lbc/q;->c:Lbc/q;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbc/s;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    iput-object p2, p0, Lbc/r;->e:Lau/t;

    iput-object p3, p0, Lbc/r;->f:Lau/t;

    invoke-virtual {p2}, Lau/t;->e()Lau/u;

    move-result-object v0

    iput-object v0, p0, Lbc/r;->d:Lau/u;

    invoke-virtual {p0}, Lbc/r;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    invoke-virtual {p0}, Lbc/r;->q()V

    invoke-virtual {p0}, Lbc/r;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbc/r;->w()F

    move-result v0

    invoke-virtual {p0, v0}, Lbc/r;->a(F)V

    :cond_10
    return-void
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Lbc/r;->d:Lau/u;

    iget-boolean v0, v0, Lau/u;->a:Z

    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Lbc/r;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->P()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/r;->d:Lau/u;

    iget-object v0, v0, Lau/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v0}, Lau/t;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 4

    const/16 v0, 0xf

    iget-object v1, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v1}, Lau/t;->b()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v2}, Lau/t;->c()Ljava/util/Date;

    move-result-object v2

    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    invoke-static {v1, v2}, Lbc/h;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, Lbc/r;->o()I

    move-result v1

    if-gt v1, v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public l()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v0}, Lau/t;->b()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v1}, Lau/t;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    goto :goto_e
.end method

.method public m()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    invoke-virtual {v0}, Lau/t;->b()Ljava/util/Date;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbc/r;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    goto :goto_a
.end method

.method public s()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/r;->e:Lau/t;

    invoke-virtual {v0}, Lau/t;->d()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    invoke-virtual {v0}, Lau/t;->d()LaJ/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbc/r;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->k()LaJ/B;

    move-result-object v0

    goto :goto_a
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbc/r;->f:Lau/t;

    invoke-virtual {v0}, Lau/t;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbc/r;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
