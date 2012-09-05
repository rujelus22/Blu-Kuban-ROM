.class public Lcom/google/googlenav/ui/wizard/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LaJ/B;Ljava/lang/String;Lax/bn;)Lax/bm;
    .registers 7

    const/4 v3, 0x1

    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    new-instance v1, Lax/bo;

    invoke-direct {v1}, Lax/bo;-><init>()V

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->a(I)Lax/bo;

    move-result-object v1

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->b(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lax/bo;->a(Ljava/lang/String;)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lax/bo;->a(Lax/bn;)Lax/bo;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lax/bo;->f(I)Lax/bo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lax/bo;->a(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lax/bo;->b(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lax/bo;->c(Z)Lax/bo;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lax/bo;->g(I)Lax/bo;

    move-result-object v1

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    invoke-virtual {v1}, Lax/bo;->a()Lax/bm;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-object v0
.end method
