.class public Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsFlagContentViewBinder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 6
    .parameter "view"
    .parameter "doc"
    .parameter "isLoaded"

    .prologue
    .line 21
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    :cond_e
    if-eqz p3, :cond_1e

    .line 23
    const v0, 0x7f0701c4

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 24
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->populateContent(I)V

    .line 29
    :goto_1d
    return-void

    .line 26
    :cond_1e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method protected populateContent(I)V
    .registers 10
    .parameter "backend"

    .prologue
    const/4 v7, 0x0

    .line 35
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mLayout:Landroid/view/View;

    const v6, 0x7f0800c6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 36
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040085

    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 39
    .local v4, rowView:Landroid/view/View;
    const v5, 0x7f080134

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, labelView:Landroid/widget/TextView;
    const v5, 0x7f080135

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, infoView:Landroid/widget/TextView;
    const v5, 0x7f080133

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, iconView:Landroid/view/View;
    const v5, 0x7f0701b1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const/4 v5, 0x3

    if-ne p1, v5, :cond_57

    const v5, 0x7f0701b2

    :goto_3d
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0, v5, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    new-instance v5, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void

    .line 43
    :cond_57
    const v5, 0x7f0701b4

    goto :goto_3d
.end method
