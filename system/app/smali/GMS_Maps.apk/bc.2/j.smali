.class public Lbc/j;
.super Lbc/s;


# instance fields
.field private final e:Lau/s;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V
    .registers 12

    sget-object v1, Lbc/q;->b:Lbc/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbc/s;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    iput-object p2, p0, Lbc/j;->e:Lau/s;

    invoke-virtual {p3}, Lau/s;->a()Lau/u;

    move-result-object v0

    iput-object v0, p0, Lbc/j;->d:Lau/u;

    invoke-virtual {p0}, Lbc/j;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    invoke-virtual {p0}, Lbc/j;->q()V

    invoke-virtual {p0}, Lbc/j;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbc/j;->w()F

    move-result v0

    invoke-virtual {p0, v0}, Lbc/j;->a(F)V

    :cond_10
    return-void
.end method

.method public B()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lbc/j;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->O()[Lau/t;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lau/t;->b()Ljava/util/Date;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    goto :goto_10
.end method

.method public s()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->o()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 3

    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->O()[Lau/t;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lau/t;->d()LaJ/B;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lbc/j;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->k()LaJ/B;

    move-result-object v0

    goto :goto_10
.end method
