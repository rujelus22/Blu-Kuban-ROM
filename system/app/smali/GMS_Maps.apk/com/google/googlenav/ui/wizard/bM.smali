.class Lcom/google/googlenav/ui/wizard/bM;
.super Lcom/google/googlenav/ui/view/dialog/O;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/bL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bL;Lcom/google/googlenav/ui/view/dialog/K;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bM;->b:Lcom/google/googlenav/ui/wizard/bL;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/O;-><init>(Lcom/google/googlenav/ui/view/dialog/K;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:Lcom/google/googlenav/ui/wizard/bL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bL;->a(Lcom/google/googlenav/ui/wizard/bL;)Lcom/google/googlenav/ui/wizard/bN;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bN;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:Lcom/google/googlenav/ui/wizard/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bL;->a()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:Lcom/google/googlenav/ui/wizard/bL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bL;->a(Lcom/google/googlenav/ui/wizard/bL;)Lcom/google/googlenav/ui/wizard/bN;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bN;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:Lcom/google/googlenav/ui/wizard/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bL;->a()V

    return-void
.end method
