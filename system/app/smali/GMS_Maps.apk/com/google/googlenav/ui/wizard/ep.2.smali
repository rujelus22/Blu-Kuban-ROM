.class Lcom/google/googlenav/ui/wizard/ep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/ui/wizard/eo;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eo;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->a(Lcom/google/googlenav/ui/wizard/eo;)V

    return-void
.end method

.method public F_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    return-void
.end method
