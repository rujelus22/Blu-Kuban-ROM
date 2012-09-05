.class Lcom/google/googlenav/ui/wizard/hd;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aW;


# instance fields
.field final synthetic a:Lam/b;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gY;Lam/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hd;->a:Lam/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/gY;)Lcom/google/googlenav/ui/wizard/hg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hd;->a:Lam/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/hg;->a(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gY;->a()V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x426

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/gY;)Lcom/google/googlenav/ui/wizard/hg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hd;->b:Lcom/google/googlenav/ui/wizard/gY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gY;->a()V

    return-void
.end method
