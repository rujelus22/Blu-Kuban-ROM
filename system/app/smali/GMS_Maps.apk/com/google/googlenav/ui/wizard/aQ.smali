.class Lcom/google/googlenav/ui/wizard/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aq;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f1001a6

    if-ne v0, v2, :cond_38

    move v0, v1

    .line 475
    :goto_b
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aq;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/googlenav/ui/wizard/aB;->a(Z)V

    .line 477
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aq;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/am;->f(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 480
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v2

    .line 481
    const/16 v3, 0xa5

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 484
    if-eqz v0, :cond_3a

    const-string v0, "oi"

    :goto_34
    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Ljava/lang/String;)V

    .line 487
    return-void

    .line 474
    :cond_38
    const/4 v0, 0x0

    goto :goto_b

    .line 484
    :cond_3a
    const-string v0, "oo"

    goto :goto_34
.end method
