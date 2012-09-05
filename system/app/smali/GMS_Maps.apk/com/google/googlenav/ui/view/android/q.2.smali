.class Lcom/google/googlenav/ui/view/android/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bb;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/o;->a(Lcom/google/googlenav/ui/bb;)Z

    move-result v0

    :goto_15
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/o;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/o;->m()V

    return v0

    :cond_1b
    move v0, v1

    goto :goto_15
.end method
