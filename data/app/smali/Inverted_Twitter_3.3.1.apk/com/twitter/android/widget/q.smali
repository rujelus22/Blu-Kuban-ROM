.class final Lcom/twitter/android/widget/q;
.super Landroid/widget/HeaderViewListAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/RefreshableListView;

.field private final b:Lcom/twitter/android/widget/p;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/p;)V
    .registers 6

    iput-object p1, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object p5, p0, Lcom/twitter/android/widget/q;->b:Lcom/twitter/android/widget/p;

    invoke-super {p0, p5}, Landroid/widget/HeaderViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    iget v0, v0, Lcom/twitter/android/widget/RefreshableListView;->c:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0

    :cond_f
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_e

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_e
.end method

.method public final getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_d

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_d
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p1, :cond_11

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    :goto_10
    return-object v0

    :cond_11
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_10

    :cond_18
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_10
.end method

.method public final isEnabled(I)Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/q;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-lez p1, :cond_16

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_15
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/q;->b:Lcom/twitter/android/widget/p;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/p;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/q;->b:Lcom/twitter/android/widget/p;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/p;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
