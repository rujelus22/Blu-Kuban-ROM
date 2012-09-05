.class Lcom/google/googlenav/ui/wizard/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/an;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0f0178

    if-ne v0, v2, :cond_38

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/an;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/googlenav/ui/wizard/ay;->a(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/an;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/aj;->f(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9b

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_3a

    const-string v0, "oi"

    :goto_34
    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Ljava/lang/String;)V

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_b

    :cond_3a
    const-string v0, "oo"

    goto :goto_34
.end method
