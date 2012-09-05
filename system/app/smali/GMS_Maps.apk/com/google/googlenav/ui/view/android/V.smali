.class Lcom/google/googlenav/ui/view/android/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/U;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->g()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/U;->a(Lcom/google/googlenav/ui/view/android/U;)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/U;->M_()V

    return-void

    :cond_1e
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/U;->b(Lcom/google/googlenav/ui/view/android/U;)V

    goto :goto_18
.end method
