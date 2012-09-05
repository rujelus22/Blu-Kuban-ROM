.class Lcom/google/googlenav/ui/view/android/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bl;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bl;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bj;->b(Lcom/google/googlenav/ui/bb;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bl;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->M_()V

    goto :goto_e
.end method
