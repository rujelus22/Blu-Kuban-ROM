.class Lcom/google/googlenav/ui/view/android/bM;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bI;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/bI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bM;->a:Lcom/google/googlenav/ui/view/android/bI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ui/view/android/bJ;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bM;-><init>(Lcom/google/googlenav/ui/view/android/bI;)V

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

    check-cast v0, Lbd/k;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-interface {v0}, Lbd/k;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_4c

    goto :goto_e

    :sswitch_17
    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->a()Lbb/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bM;->a:Lcom/google/googlenav/ui/view/android/bI;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0}, Lbb/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lbb/a;->b()I

    move-result v3

    invoke-virtual {v0}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LaY/m;->a(IILjava/lang/Object;)Z

    goto :goto_e

    :sswitch_31
    check-cast v0, Lbd/aD;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bM;->a:Lcom/google/googlenav/ui/view/android/bI;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0}, Lbd/aD;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bl;->g()I

    move-result v2

    invoke-virtual {v0}, Lbd/aD;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, LaY/m;->a(IILjava/lang/Object;)Z

    goto :goto_e

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_17
        0xf -> :sswitch_31
    .end sparse-switch
.end method
