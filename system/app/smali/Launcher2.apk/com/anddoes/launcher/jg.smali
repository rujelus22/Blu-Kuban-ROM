.class public abstract Lcom/anddoes/launcher/jg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/anddoes/launcher/PagedView;


# direct methods
.method protected constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 12
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2531
    .line 2533
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    iget v0, v0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    iget v0, v0, Lcom/anddoes/launcher/PagedView;->o:I

    :goto_f
    move v1, v2

    move v3, v2

    move v4, v2

    .line 2535
    :goto_12
    iget-object v6, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v6}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v6

    if-lt v1, v6, :cond_44

    .line 2552
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    iget-boolean v0, v0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_9a

    .line 2553
    if-eqz v4, :cond_83

    .line 2554
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v1}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 2555
    iget-object v1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/View;)V

    .line 2556
    iget-object v1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/PagedView;->q(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/jg;->a(Landroid/view/View;F)V

    .line 2565
    :cond_3e
    :goto_3e
    return-void

    .line 2533
    :cond_3f
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    iget v0, v0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_f

    .line 2536
    :cond_44
    iget-object v6, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v6, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v6

    .line 2537
    if-eqz v6, :cond_6b

    .line 2538
    iget-object v7, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v7, p1, v6, v1}, Lcom/anddoes/launcher/PagedView;->a(ILandroid/view/View;I)F

    move-result v7

    .line 2539
    if-eq v1, v0, :cond_5c

    add-int/lit8 v8, v0, -0x1

    if-eq v1, v8, :cond_5c

    add-int/lit8 v8, v0, 0x1

    if-ne v1, v8, :cond_6e

    .line 2540
    :cond_5c
    iget-object v8, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v8, v6}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/View;)V

    .line 2541
    invoke-virtual {p0, v6, v7}, Lcom/anddoes/launcher/jg;->a(Landroid/view/View;F)V

    .line 2545
    :goto_64
    if-nez v1, :cond_73

    cmpg-float v6, v7, v9

    if-gez v6, :cond_73

    move v4, v5

    .line 2535
    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2543
    :cond_6e
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64

    .line 2547
    :cond_73
    iget-object v6, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v6}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_6b

    cmpl-float v6, v7, v9

    if-lez v6, :cond_6b

    move v3, v5

    .line 2548
    goto :goto_6b

    .line 2557
    :cond_83
    if-eqz v3, :cond_3e

    .line 2558
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 2559
    iget-object v1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/View;)V

    .line 2560
    iget-object v1, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/PagedView;->r(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/jg;->a(Landroid/view/View;F)V

    goto :goto_3e

    .line 2563
    :cond_9a
    iget-object v0, p0, Lcom/anddoes/launcher/jg;->b:Lcom/anddoes/launcher/PagedView;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/PagedView;->d(I)V

    goto :goto_3e
.end method

.method protected a(Landroid/view/View;F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2568
    return-void
.end method
