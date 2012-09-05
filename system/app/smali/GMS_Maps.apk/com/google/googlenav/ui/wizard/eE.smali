.class Lcom/google/googlenav/ui/wizard/eE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->f(Lcom/google/googlenav/ui/wizard/eA;)LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->i(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/bb;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eA;->f(Lcom/google/googlenav/ui/wizard/eA;)LaE/h;

    move-result-object v1

    invoke-virtual {v1}, LaE/h;->q()LaJ/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;LaJ/B;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->g(Lcom/google/googlenav/ui/wizard/eA;)V

    goto :goto_23
.end method
