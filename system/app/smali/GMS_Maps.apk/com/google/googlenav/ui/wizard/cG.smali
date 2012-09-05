.class Lcom/google/googlenav/ui/wizard/cG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cG;->a:Lcom/google/googlenav/ui/wizard/cE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cG;->a:Lcom/google/googlenav/ui/wizard/cE;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cE;->b:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cA;->b(Lcom/google/googlenav/ui/wizard/cA;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cG;->a:Lcom/google/googlenav/ui/wizard/cE;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cE;->b:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cG;->a:Lcom/google/googlenav/ui/wizard/cE;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/db;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/db;->a(Z)V

    return-void
.end method
