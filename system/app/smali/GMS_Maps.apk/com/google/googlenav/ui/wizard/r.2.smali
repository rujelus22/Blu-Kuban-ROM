.class Lcom/google/googlenav/ui/wizard/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Q_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/w;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    return-void
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/w;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-virtual {p1}, Lau/x;->j()Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;Lcom/google/googlenav/ah;)V

    return-void
.end method
