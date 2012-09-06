.class final Lcom/twitter/android/widget/y;
.super Landroid/widget/HeaderViewListAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TapRefreshableListView;

.field private final b:Lcom/twitter/android/widget/x;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/TapRefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/x;)V
    .registers 6

    iput-object p1, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object p5, p0, Lcom/twitter/android/widget/y;->b:Lcom/twitter/android/widget/x;

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

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget v0, v0, Lcom/twitter/android/widget/TapRefreshableListView;->e:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_e

    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0

    :cond_e
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_d

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_d
.end method

.method public final getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p1, :cond_d

    const/4 v0, -0x1

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_c

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_c
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p1, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/y;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/CardRowView;->b(II)V

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1d

    :cond_25
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1d
.end method

.method public final isEnabled(I)Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/y;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_13

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    :cond_17
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_14
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/y;->b:Lcom/twitter/android/widget/x;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/x;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/y;->b:Lcom/twitter/android/widget/x;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/x;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
