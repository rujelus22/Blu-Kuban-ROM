.class Lcom/google/googlenav/ui/wizard/fl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fl;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fl;->a:Lcom/google/googlenav/ui/wizard/fj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/fj;->b(Lcom/google/googlenav/ui/wizard/fj;Z)Z

    return-void
.end method

.method public E_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fl;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fl;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fl;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fj;->d(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/fj;->c(Lcom/google/googlenav/ui/wizard/fj;Lcom/google/googlenav/ah;)V

    return-void
.end method

.method public F_()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method
