.class Lbd/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbd/an;


# direct methods
.method private constructor <init>(Lbd/an;)V
    .registers 2

    iput-object p1, p0, Lbd/ap;->a:Lbd/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbd/an;Lbd/ao;)V
    .registers 3

    invoke-direct {p0, p1}, Lbd/ap;-><init>(Lbd/an;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->a()Lbb/a;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {v0}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbd/ap;->a:Lbd/an;

    invoke-static {v1, v0}, Lbd/an;->a(Lbd/an;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lbd/ap;->a:Lbd/an;

    invoke-static {v0}, Lbd/an;->b(Lbd/an;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbd/ap;->a:Lbd/an;

    invoke-static {v0}, Lbd/an;->b(Lbd/an;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v3, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_15
.end method
