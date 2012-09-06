.class final Lcom/twitter/android/ae;
.super Lcom/twitter/android/widget/c;


# instance fields
.field private final b:Lcom/twitter/android/ew;

.field private final c:Lcom/twitter/android/widget/TapRefreshableListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/fd;Lcom/twitter/android/widget/TapRefreshableListView;)V
    .registers 9

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/widget/c;-><init>(Landroid/widget/ListAdapter;I)V

    new-instance v0, Lcom/twitter/android/ew;

    const v1, 0x7f0b0196

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/StoriesActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/ae;->b:Lcom/twitter/android/ew;

    iput-object p3, p0, Lcom/twitter/android/ae;->c:Lcom/twitter/android/widget/TapRefreshableListView;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/ae;->b:Lcom/twitter/android/ew;

    iget-object v0, v0, Lcom/twitter/android/ew;->c:Landroid/content/Intent;

    return-object v0
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ae;->b:Lcom/twitter/android/ew;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ey;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/ew;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget-object v1, p0, Lcom/twitter/android/ae;->c:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/ae;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/CardRowView;->b(II)V

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0}, Lcom/twitter/android/ae;->getCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/widget/CardRowView;->b(II)V

    goto :goto_17
.end method
