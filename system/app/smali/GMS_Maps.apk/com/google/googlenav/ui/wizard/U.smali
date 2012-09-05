.class Lcom/google/googlenav/ui/wizard/U;
.super Lax/bl;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/U;->b:Lcom/google/googlenav/ui/wizard/R;

    invoke-direct {p0, p2}, Lax/bl;-><init>(Lax/bq;)V

    return-void
.end method


# virtual methods
.method public E_()V
    .registers 2

    invoke-super {p0}, Lax/bl;->E_()V

    invoke-static {}, Lax/au;->l()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/U;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->e(Lcom/google/googlenav/ui/wizard/P;)V

    goto :goto_14
.end method

.method public F_()V
    .registers 4

    invoke-super {p0}, Lax/bl;->F_()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->b()V

    return-void
.end method

.method public i()V
    .registers 4

    invoke-super {p0}, Lax/bl;->i()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->b()V

    return-void
.end method
