.class public Lcom/google/android/youtube/core/ui/PagedListView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c000b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const v0, 0x7f040058

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 42
    sget-object v1, Lcom/google/android/youtube/b;->f:[I

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 46
    if-nez v2, :cond_35

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 55
    :goto_22
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 56
    if-ltz v2, :cond_2e

    .line 57
    packed-switch v2, :pswitch_data_42

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 64
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 67
    return-void

    .line 52
    :cond_35
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 58
    :pswitch_39
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2e

    .line 59
    :pswitch_3d
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2e

    .line 57
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method protected final b(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 113
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    if-nez v1, :cond_24

    .line 116
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 121
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method protected final g()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 103
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/h;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/h;->a(Lcom/google/android/youtube/core/ui/g;III)V

    .line 92
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 85
    return-void
.end method
