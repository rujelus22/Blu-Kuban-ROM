.class public Lcom/google/android/youtube/core/ui/PagedListView;
.super Lcom/google/android/youtube/core/ui/d;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0d0001

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const v0, 0x7f040034

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/youtube/core/ui/d;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 38
    sget-object v1, Lcom/google/android/youtube/b;->d:[I

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_1e

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_1e
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 48
    if-ltz v2, :cond_2a

    .line 49
    packed-switch v2, :pswitch_data_3a

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 56
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 59
    return-void

    .line 50
    :pswitch_31
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2a

    .line 51
    :pswitch_35
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2a

    .line 49
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/a/a;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/d;->a(Lcom/google/android/youtube/core/a/a;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 95
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/i;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/i;->a(III)V

    .line 84
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    return-void
.end method
