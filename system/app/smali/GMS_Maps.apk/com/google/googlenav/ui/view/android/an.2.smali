.class public Lcom/google/googlenav/ui/view/android/an;
.super Lcom/google/googlenav/ui/view/android/N;

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/N;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/N;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_12
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const v3, 0x7f030150

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/an;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    instance-of v1, p2, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v1, :cond_19

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v3, :cond_19

    check-cast p2, Lcom/google/googlenav/ui/android/TemplateView;

    :goto_15
    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    return-object p2

    :cond_19
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    move-object p2, v1

    goto :goto_15
.end method
