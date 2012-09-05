.class public Lcom/google/googlenav/ui/wizard/ch;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ce;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ch;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ch;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/ce;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/ci;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ch;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/ci;-><init>(Lcom/google/googlenav/ui/wizard/ce;Lcom/google/googlenav/ui/wizard/cf;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Landroid/view/View;)V

    return-object v1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x20e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
