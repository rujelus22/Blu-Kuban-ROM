.class public Lbc/k;
.super Lbc/h;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;I)V
    .registers 10

    sget-object v1, Lbc/q;->e:Lbc/q;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbc/h;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    invoke-virtual {p0}, Lbc/k;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbc/k;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbc/k;->a(F)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/k;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->au()Lau/x;

    move-result-object v0

    invoke-static {v0}, Lbc/k;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/k;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lbc/k;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public s()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/k;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aE()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lbc/k;->s()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
