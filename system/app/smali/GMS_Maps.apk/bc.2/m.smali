.class public Lbc/m;
.super Lbc/n;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;ILjava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lbc/n;-><init>(Lau/v;Lau/s;ILjava/util/List;)V

    invoke-virtual {p0}, Lbc/m;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    iget-object v0, p0, Lbc/m;->b:Lau/v;

    iget v1, p0, Lbc/m;->c:I

    invoke-static {v0, v1, p0}, Lbc/h;->b(Lau/v;ILbc/h;)V

    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/m;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/m;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->S()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/m;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aE()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/m;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->au()Lau/x;

    move-result-object v0

    invoke-static {v0}, Lbc/m;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
