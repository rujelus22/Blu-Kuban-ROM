.class Lcom/google/googlenav/settings/r;
.super Lcom/google/googlenav/bZ;


# instance fields
.field final synthetic a:Lax/j;

.field final synthetic b:Lcom/google/googlenav/settings/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/q;Lam/b;Lcom/google/googlenav/ca;Lax/j;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/settings/r;->b:Lcom/google/googlenav/settings/q;

    iput-object p4, p0, Lcom/google/googlenav/settings/r;->a:Lax/j;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/bZ;-><init>(Lam/b;Lcom/google/googlenav/ca;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/bZ;->b()V

    iget-object v0, p0, Lcom/google/googlenav/settings/r;->b:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->a(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/r;->a:Lax/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/A;->a(Lax/j;)V

    return-void
.end method
