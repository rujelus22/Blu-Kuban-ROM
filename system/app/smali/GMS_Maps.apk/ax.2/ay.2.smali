.class Lax/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bN;


# instance fields
.field final synthetic a:Lax/ax;


# direct methods
.method constructor <init>(Lax/ax;)V
    .registers 2

    iput-object p1, p0, Lax/ay;->a:Lax/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "ga"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lax/ay;->a:Lax/ax;

    iget-object v1, v1, Lax/ax;->c:Lax/av;

    iget-object v1, v1, Lax/av;->c:Lcom/google/googlenav/android/ac;

    new-instance v2, Lax/az;

    invoke-direct {v2, p0}, Lax/az;-><init>(Lax/ay;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    iget-object v0, p0, Lax/ay;->a:Lax/ax;

    iget-object v0, v0, Lax/ax;->c:Lax/av;

    iget-object v0, v0, Lax/av;->d:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->n()V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lax/ay;->a:Lax/ax;

    iget-object v0, v0, Lax/ax;->a:Lcom/google/googlenav/ui/wizard/aX;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aX;->c(Z)V

    return-void
.end method
