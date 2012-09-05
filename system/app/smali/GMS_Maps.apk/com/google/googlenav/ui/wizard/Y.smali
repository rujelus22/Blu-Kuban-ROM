.class Lcom/google/googlenav/ui/wizard/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/w;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;Lax/j;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ad;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->c()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->d()V

    return-void
.end method
