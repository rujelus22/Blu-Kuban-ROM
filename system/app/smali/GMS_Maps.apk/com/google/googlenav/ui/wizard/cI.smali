.class Lcom/google/googlenav/ui/wizard/cI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cI;->a:Lcom/google/googlenav/ui/wizard/cH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cI;->a:Lcom/google/googlenav/ui/wizard/cH;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cH;->b:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cA;->c(Lcom/google/googlenav/ui/wizard/cA;)LaE/m;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cI;->a:Lcom/google/googlenav/ui/wizard/cH;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cH;->b:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cA;->c(Lcom/google/googlenav/ui/wizard/cA;)LaE/m;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LaE/m;->a(ILaE/h;)V

    :cond_17
    return-void
.end method
