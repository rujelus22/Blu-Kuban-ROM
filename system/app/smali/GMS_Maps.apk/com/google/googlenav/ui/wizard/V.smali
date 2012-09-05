.class Lcom/google/googlenav/ui/wizard/V;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/ui/wizard/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    const/4 v1, 0x1

    new-array v1, v1, [Lax/aL;

    const/4 v2, 0x0

    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/ui/wizard/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/R;->b(Lcom/google/googlenav/ui/wizard/R;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/V;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Z)V

    return-void
.end method
