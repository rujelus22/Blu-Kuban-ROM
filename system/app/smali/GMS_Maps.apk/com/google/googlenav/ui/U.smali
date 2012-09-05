.class Lcom/google/googlenav/ui/U;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v1}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v1

    invoke-virtual {v1}, LaE/h;->q()LaJ/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v2}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/D;->a(LaJ/B;LaE/h;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->h(Lcom/google/googlenav/ui/D;)Lax/bD;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->h(Lcom/google/googlenav/ui/D;)Lax/bD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v1}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v1

    invoke-virtual {v1}, LaE/h;->q()LaJ/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v2}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lax/bD;->a(LaJ/B;LaE/h;)V

    :cond_42
    return-void
.end method
