.class public Lbc/p;
.super Lbc/n;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbc/n;-><init>(Lau/v;Lau/s;ILjava/util/List;)V

    invoke-virtual {p0}, Lbc/p;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbc/p;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbc/p;->a(F)V

    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/p;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/p;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->S()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/p;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aE()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/p;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->au()Lau/x;

    move-result-object v0

    invoke-static {v0}, Lbc/p;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
