.class Lcom/google/googlenav/ui/wizard/W;
.super Lax/bl;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/aX;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;Lcom/google/googlenav/ui/wizard/aX;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/W;->c:Lcom/google/googlenav/ui/wizard/R;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/W;->b:Lcom/google/googlenav/ui/wizard/aX;

    invoke-direct {p0, p2}, Lax/bl;-><init>(Lax/bq;)V

    return-void
.end method


# virtual methods
.method public E_()V
    .registers 3

    invoke-super {p0}, Lax/bl;->E_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/W;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/W;->b:Lcom/google/googlenav/ui/wizard/aX;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/R;->a(Lcom/google/googlenav/ui/wizard/R;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method public F_()V
    .registers 3

    invoke-super {p0}, Lax/bl;->F_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/W;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Z)V

    return-void
.end method

.method public i()V
    .registers 3

    invoke-super {p0}, Lax/bl;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/W;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Z)V

    return-void
.end method
