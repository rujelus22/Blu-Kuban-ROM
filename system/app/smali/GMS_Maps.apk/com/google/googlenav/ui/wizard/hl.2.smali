.class Lcom/google/googlenav/ui/wizard/hl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hi;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/hi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hl;->a:Lcom/google/googlenav/ui/wizard/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/hi;Lcom/google/googlenav/ui/wizard/hj;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hl;-><init>(Lcom/google/googlenav/ui/wizard/hi;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->a()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->a()I

    move-result v1

    invoke-virtual {v0}, Lbb/a;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hl;->a:Lcom/google/googlenav/ui/wizard/hi;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/googlenav/ui/wizard/hi;->a(IILjava/lang/Object;)Z

    :cond_20
    return-void
.end method
