.class Lcom/google/googlenav/ui/view/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/p;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/p;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bb;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/o;->b(Lcom/google/googlenav/ui/bb;)Z

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/p;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/o;->m()V

    return-void
.end method
