.class public Lcom/google/android/youtube/core/ui/PagedGridView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 36
    const v0, 0x7f040057

    const v1, 0x7f0c000c

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    .line 40
    sget-object v1, Lcom/google/android/youtube/b;->e:[I

    const v2, 0x7f0c000c

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 46
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 49
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 50
    if-lez v2, :cond_33

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 54
    :cond_33
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 55
    if-ltz v2, :cond_3f

    .line 56
    packed-switch v2, :pswitch_data_64

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 64
    :cond_3f
    :goto_3f
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 67
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 68
    if-ltz v2, :cond_50

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 72
    :cond_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    return-void

    .line 57
    :pswitch_57
    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 58
    :pswitch_5b
    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 59
    :pswitch_5f
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 56
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method protected final b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method protected final g()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/h;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/h;->a(Lcom/google/android/youtube/core/ui/g;III)V

    .line 100
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 112
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 108
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 93
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 116
    return-void
.end method
