.class Lcom/google/googlenav/ui/wizard/eF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaQ/o;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;LaQ/o;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eF;->b:Lcom/google/googlenav/ui/wizard/eA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eF;->a:LaQ/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eF;->a:LaQ/o;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eF;->b:Lcom/google/googlenav/ui/wizard/eA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;LaQ/m;)LaQ/m;

    :goto_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eF;->b:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->k(Lcom/google/googlenav/ui/wizard/eA;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eF;->b:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eF;->a:LaQ/o;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eF;->b:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eA;->j(Lcom/google/googlenav/ui/wizard/eA;)LaQ/m;

    move-result-object v2

    invoke-virtual {v1, v2}, LaQ/o;->a(LaQ/m;)LaQ/o;

    move-result-object v1

    invoke-virtual {v1}, LaQ/o;->a()LaQ/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;LaQ/m;)LaQ/m;

    goto :goto_a
.end method
