.class Lcom/google/googlenav/ui/view/android/aS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aP;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aV;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/aV;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/aV;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->a()Lcom/google/googlenav/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/android/aP;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/googlenav/ui/p;

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_2d
    return-void
.end method
