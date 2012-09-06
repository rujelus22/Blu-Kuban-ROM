.class final Lcom/anddoes/launcher/lq;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    .line 2610
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0, p2}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;F)V

    .line 2613
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_b

    .line 2633
    :goto_a
    return-void

    .line 2617
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 2618
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v0, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_20

    .line 2632
    iget-object v0, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->v(Lcom/anddoes/launcher/Workspace;)V

    goto :goto_a

    .line 2619
    :cond_20
    iget-object v0, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 2620
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 2621
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    iget-object v2, v2, Lcom/anddoes/launcher/Workspace;->aB:[F

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->i(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 2622
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->j(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->k(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setTranslationY(F)V

    .line 2623
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->l(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->m(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setScaleX(F)V

    .line 2624
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->n(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->o(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setScaleY(F)V

    .line 2626
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->p(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->q(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 2625
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->a(F)V

    .line 2627
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->r(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    .line 2628
    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->s(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 2627
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->b(F)V

    .line 2629
    iget-object v2, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->t(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lq;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->u(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->c(F)V

    .line 2630
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 2618
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_12
.end method
