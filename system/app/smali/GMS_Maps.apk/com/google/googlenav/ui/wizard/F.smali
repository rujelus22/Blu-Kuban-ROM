.class Lcom/google/googlenav/ui/wizard/F;
.super Lcom/google/googlenav/bZ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/E;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/E;Lam/b;Lcom/google/googlenav/ca;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/F;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/bZ;-><init>(Lam/b;Lcom/google/googlenav/ca;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/bZ;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/F;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/ui/wizard/E;)Lax/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lax/k;->b(Lax/l;)V

    return-void
.end method
