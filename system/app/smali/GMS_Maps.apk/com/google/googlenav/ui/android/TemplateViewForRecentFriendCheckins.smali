.class public Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field protected a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    if-le v0, v2, :cond_38

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    sub-int v3, v0, v2

    move v1, v2

    :goto_14
    if-ge v1, v3, :cond_38

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f0300bb

    iget-object v5, p0, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v4, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    add-int v5, v1, v2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_38
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0354

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRecentFriendCheckins;->a:Landroid/widget/LinearLayout;

    return-void
.end method
