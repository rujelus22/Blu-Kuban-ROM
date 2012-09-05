.class Lcom/google/googlenav/ui/wizard/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bd;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ba;Lcom/google/googlenav/ui/wizard/bb;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bd;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/at;

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lbd/at;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bd;->a:Lcom/google/googlenav/ui/wizard/ba;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(IILjava/lang/Object;)Z

    goto :goto_10
.end method
