.class public Lcom/google/googlenav/ui/view/android/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/util/List;

.field private final c:Lah/g;

.field private final d:Lbb/C;

.field private e:Landroid/view/View;


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 5

    new-instance v1, Lcom/google/googlenav/ui/view/android/cj;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/android/cj;-><init>(Lcom/google/googlenav/ui/view/android/ci;)V

    const v0, 0x7f0f03f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/cj;->b:Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    iget-object v0, v1, Lcom/google/googlenav/ui/view/android/cj;->b:Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ch;->d:Lbb/C;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a(Lbb/C;)V

    const v0, 0x7f0f03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/cj;->a:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ch;->e:Landroid/view/View;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lcom/google/googlenav/ui/view/android/cj;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/cj;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ch;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/cj;->b:Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ch;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a(Ljava/util/List;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/cj;->b:Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ch;->c:Lah/g;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a(Lah/g;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/cj;->b:Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->invalidate()V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03018a

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
