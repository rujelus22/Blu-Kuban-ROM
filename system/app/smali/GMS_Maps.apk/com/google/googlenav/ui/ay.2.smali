.class Lcom/google/googlenav/ui/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/av;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/av;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/av;

    invoke-static {v0}, Lcom/google/googlenav/ui/av;->c(Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->c()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/av;

    invoke-static {v0}, Lcom/google/googlenav/ui/av;->d(Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->Z()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method
