.class Lcom/google/googlenav/ui/wizard/fy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aw;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/fu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/aw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->c()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->c()Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->e(I)J

    move-result-wide v0

    new-instance v2, Lcom/google/googlenav/B;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fu;->b(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/fG;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/fu;->b(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/ah;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/fu;->c(Lcom/google/googlenav/ui/wizard/fu;)LaS/e;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/fu;->d(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/L;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/googlenav/ui/wizard/fG;-><init>(Lcom/google/googlenav/ah;LaS/e;Lcom/google/googlenav/L;Lcom/google/googlenav/aw;)V

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/googlenav/B;-><init>(JLjava/util/List;Lcom/google/googlenav/C;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    :goto_50
    return-void

    :cond_51
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fu;->b(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/av;->b(Lcom/google/googlenav/aw;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fy;->b:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fu;->c(Lcom/google/googlenav/ui/wizard/fu;)LaS/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fy;->a:Lcom/google/googlenav/aw;

    invoke-virtual {v0, v1}, LaS/e;->a(Lcom/google/googlenav/aw;)V

    goto :goto_50
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method
