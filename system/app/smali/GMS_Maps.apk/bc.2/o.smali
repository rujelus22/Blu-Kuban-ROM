.class public Lbc/o;
.super Lbc/n;


# instance fields
.field private final e:Lau/s;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4, p5}, Lbc/n;-><init>(Lau/v;Lau/s;ILjava/util/List;)V

    iput-object p3, p0, Lbc/o;->e:Lau/s;

    invoke-virtual {p0}, Lbc/o;->A()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    iget-object v0, p0, Lbc/o;->b:Lau/v;

    iget v1, p0, Lbc/o;->c:I

    invoke-static {v0, v1, p0}, Lbc/h;->b(Lau/v;ILbc/h;)V

    return-void
.end method

.method public l()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/o;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lbc/o;->e:Lau/s;

    invoke-virtual {v0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lbc/h;->a(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public t()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/o;->e:Lau/s;

    invoke-virtual {v0}, Lau/s;->o()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/o;->e:Lau/s;

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
