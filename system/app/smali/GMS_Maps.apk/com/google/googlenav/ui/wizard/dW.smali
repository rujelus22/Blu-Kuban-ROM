.class Lcom/google/googlenav/ui/wizard/dW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/O;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dV;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dV;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a([B)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dO;->c(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ah;->e(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dO;->b(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/L;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0, v2}, LaY/i;->e(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dW;->a:Lcom/google/googlenav/ui/wizard/dV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dO;->W_()V

    return-void
.end method
