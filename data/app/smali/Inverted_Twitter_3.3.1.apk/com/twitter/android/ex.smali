.class public final Lcom/twitter/android/ex;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/twitter/android/ex;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ew;

    if-nez p2, :cond_38

    invoke-virtual {p0}, Lcom/twitter/android/ex;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/twitter/android/ey;

    invoke-direct {v1, v2}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_20
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/ey;

    iget-object v1, v1, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/ew;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/ex;->getCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v2

    :cond_38
    move-object v2, p2

    goto :goto_20
.end method
