.class Lcom/google/googlenav/ui/view/android/aK;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/aL;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-eqz p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aK;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aL;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aL;->a(Landroid/view/View;)V

    :goto_b
    return-object p2

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aK;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aL;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aL;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_b
.end method
