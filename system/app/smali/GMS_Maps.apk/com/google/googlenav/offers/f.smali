.class Lcom/google/googlenav/offers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/offers/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/a;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x317

    .line 432
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->n()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->r()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 433
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ah()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 434
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->T()Lcom/google/googlenav/ui/wizard/fo;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fo;->b(Ljava/lang/String;)V

    .line 442
    :goto_33
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->g(Lcom/google/googlenav/offers/a;)V

    .line 443
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 445
    :cond_41
    return-void

    .line 437
    :cond_42
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->c(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 428
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ah()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 450
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->T()Lcom/google/googlenav/ui/wizard/fo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 451
    iget-object v0, p0, Lcom/google/googlenav/offers/f;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 453
    :cond_2a
    return-void
.end method
