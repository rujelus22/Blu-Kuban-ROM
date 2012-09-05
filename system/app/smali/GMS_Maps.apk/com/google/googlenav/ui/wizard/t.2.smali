.class Lcom/google/googlenav/ui/wizard/t;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/o;->e()V

    return-void
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/o;->e()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/t;->a:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/e;->a(Ljava/util/List;)V

    goto :goto_1b
.end method
