.class public Lcom/google/android/youtube/core/ui/PagedGridView;
.super Lcom/google/android/youtube/core/ui/d;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
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

    .line 35
    const v0, 0x7f040033

    const v1, 0x7f0d0002

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/d;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    .line 39
    sget-object v1, Lcom/google/android/youtube/b;->c:[I

    const v2, 0x7f0d0002

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 45
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 48
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 49
    if-lez v2, :cond_33

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 53
    :cond_33
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 54
    if-ltz v2, :cond_3f

    .line 55
    packed-switch v2, :pswitch_data_64

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 63
    :cond_3f
    :goto_3f
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 66
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 67
    if-ltz v2, :cond_50

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 71
    :cond_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    return-void

    .line 56
    :pswitch_57
    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 57
    :pswitch_5b
    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 58
    :pswitch_5f
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3f

    .line 55
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 107
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 92
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/a/a;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Lcom/google/android/youtube/core/a/a;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/i;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/i;->a(III)V

    .line 99
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    return-void
.end method
