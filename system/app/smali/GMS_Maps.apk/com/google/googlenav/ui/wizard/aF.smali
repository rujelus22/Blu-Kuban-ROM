.class Lcom/google/googlenav/ui/wizard/aF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aG;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aF;->b:Lcom/google/googlenav/ui/wizard/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    invoke-static {}, Lax/aA;->C()V

    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-static {}, Lax/aA;->B()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->b()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    invoke-static {}, Lax/aA;->B()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->b()V

    return-void
.end method
