.class Lbd/P;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f030103

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbd/P;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbd/P;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lbd/P;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f02e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbd/P;->b:Landroid/widget/TextView;

    return-void
.end method
