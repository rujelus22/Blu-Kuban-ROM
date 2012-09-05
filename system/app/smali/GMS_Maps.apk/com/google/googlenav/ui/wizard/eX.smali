.class Lcom/google/googlenav/ui/wizard/eX;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eV;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eV;->b(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/eZ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fe;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/eZ;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eV;->b(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/eZ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/eZ;->a(Ljava/util/List;)V

    return-void
.end method
