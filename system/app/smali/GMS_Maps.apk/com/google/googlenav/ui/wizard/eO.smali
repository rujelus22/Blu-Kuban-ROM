.class Lcom/google/googlenav/ui/wizard/eO;
.super Lax/aq;


# instance fields
.field final synthetic c:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;Ljava/util/List;Lax/aC;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0, p2, p3, p4}, Lax/aq;-><init>(Ljava/util/List;Lax/aC;Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lax/aq;->b()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->a:Lam/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bl;->a(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/wizard/eA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eA;->E_()V

    :cond_15
    return-void
.end method
