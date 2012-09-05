.class Lcom/google/googlenav/ui/wizard/bW;
.super Lcom/google/googlenav/bx;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bV;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-direct {p0}, Lcom/google/googlenav/bx;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bV;->b(Lcom/google/googlenav/ui/wizard/bV;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bV;->a(Lcom/google/googlenav/ui/wizard/bV;)Lcom/google/googlenav/ui/wizard/bY;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bY;->b()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bV;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bV;->a(Lcom/google/googlenav/ui/wizard/bV;Z)Z

    goto :goto_11
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bV;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bV;->a(Lcom/google/googlenav/ui/wizard/bV;)Lcom/google/googlenav/ui/wizard/bY;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bY;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bV;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x338

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    return-void
.end method
