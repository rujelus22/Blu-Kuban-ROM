.class public Lcom/google/googlenav/ui/view/android/R;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/google/googlenav/ui/p;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/R;->b:Lcom/google/googlenav/ui/p;

    iput p3, p0, Lcom/google/googlenav/ui/view/android/R;->c:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/R;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/R;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/R;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    invoke-interface {v0}, Lbd/k;->c()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    if-nez p2, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/R;->a:Landroid/view/LayoutInflater;

    invoke-interface {v0}, Lbd/k;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2}, Lbd/k;->a(Landroid/view/View;)Lbd/aJ;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1a
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/R;->b:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v2, v1}, Lbd/k;->a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V

    return-object p2

    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd/aJ;

    goto :goto_1a
.end method

.method public getViewTypeCount()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/R;->c:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/R;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    invoke-interface {v0}, Lbd/k;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
