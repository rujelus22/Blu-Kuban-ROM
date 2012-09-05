.class Lcom/google/googlenav/ui/wizard/dV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dU;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dV;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "cof"

    new-instance v2, Lcom/google/googlenav/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dU;->a(Lcom/google/googlenav/ui/wizard/dU;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ah;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dO;->b(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/L;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dV;->b:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dO;->b(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/L;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/D;

    new-instance v7, Lcom/google/googlenav/ui/wizard/dW;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/dW;-><init>(Lcom/google/googlenav/ui/wizard/dV;)V

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/O;)V

    :cond_34
    return-void
.end method
