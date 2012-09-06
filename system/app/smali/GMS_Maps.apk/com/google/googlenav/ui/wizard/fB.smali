.class abstract Lcom/google/googlenav/ui/wizard/fb;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fb;->a:Lcom/google/googlenav/ui/wizard/eT;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 588
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 589
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/fb;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 590
    new-instance v2, Lcom/google/googlenav/ui/wizard/fc;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fc;-><init>(Lcom/google/googlenav/ui/wizard/fb;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 607
    return-object v1
.end method
