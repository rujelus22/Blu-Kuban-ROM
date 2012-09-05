.class public Lcom/google/googlenav/ui/wizard/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/hM;

.field private final b:Lcom/google/googlenav/ui/wizard/ej;

.field private c:LaT/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/ej;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(Lat/g;)V

    :cond_10
    return-void
.end method

.method public F_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/e;->a(Z)V

    :cond_18
    return-void
.end method

.method public a(LaT/a;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(Lat/g;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/en;->c()V

    goto :goto_13
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x398

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x399

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->c:LaT/a;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->b:Lcom/google/googlenav/ui/wizard/ej;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    :cond_12
    return-void
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
