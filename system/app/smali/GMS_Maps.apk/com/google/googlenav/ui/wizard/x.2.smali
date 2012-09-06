.class Lcom/google/googlenav/ui/wizard/X;
.super Lcom/google/googlenav/friend/bf;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ui/wizard/U;

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/bf;-><init>(Lcom/google/googlenav/friend/bk;)V

    return-void
.end method


# virtual methods
.method public D_()V
    .registers 2

    .prologue
    .line 545
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->D_()V

    .line 546
    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v0

    if-nez v0, :cond_15

    .line 548
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/X;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 552
    :goto_14
    return-void

    .line 550
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->f(Lcom/google/googlenav/ui/wizard/S;)V

    goto :goto_14
.end method

.method public E_()V
    .registers 4

    .prologue
    .line 571
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->E_()V

    .line 572
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->b()V

    .line 575
    return-void
.end method

.method public L_()V
    .registers 4

    .prologue
    .line 560
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->L_()V

    .line 561
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 563
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->b()V

    .line 564
    return-void
.end method
