.class public final Lcom/twitter/android/widget/TapRefreshableListView;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/twitter/android/widget/ac;


# instance fields
.field a:Landroid/widget/Scroller;

.field b:Lcom/twitter/android/widget/x;

.field c:Landroid/view/View;

.field d:I

.field e:I

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/twitter/android/widget/z;

.field private i:Lcom/twitter/android/widget/o;

.field private j:Lcom/twitter/android/widget/y;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TapRefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/TapRefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->a:Landroid/widget/Scroller;

    new-instance v0, Lcom/twitter/android/widget/z;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/z;-><init>(Lcom/twitter/android/widget/TapRefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->h:Lcom/twitter/android/widget/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gtz v0, :cond_30

    if-nez v1, :cond_30

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->h:Lcom/twitter/android/widget/z;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/z;->a(I)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->f()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->setSelectionFromTop(II)V

    goto :goto_2f
.end method

.method final a(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/o;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/TapRefreshableListView;->i:Lcom/twitter/android/widget/o;

    return-void
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->i:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_15

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/TapRefreshableListView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_14
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->i:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_15

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/TapRefreshableListView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_14
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->b:Lcom/twitter/android/widget/x;

    invoke-virtual {v0}, Lcom/twitter/android/widget/x;->onChanged()V

    :cond_20
    return-void
.end method

.method final b(I)V
    .registers 4

    iget v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    return-void
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    return v0
.end method

.method final c(I)Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final d()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    invoke-virtual {v0}, Lcom/twitter/android/widget/y;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->e:I

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    invoke-virtual {v0}, Lcom/twitter/android/widget/y;->a()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->e:I

    goto :goto_11
.end method

.method public final e()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_27

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-gtz v2, :cond_1b

    if-nez v2, :cond_26

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_26

    :cond_1b
    const/16 v3, 0xf

    if-le v2, v3, :cond_22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->setSelection(I)V

    :cond_22
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->smoothScrollToPosition(I)V

    move v0, v1

    :cond_26
    :goto_26
    return v0

    :cond_27
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->setSelection(I)V

    move v0, v1

    goto :goto_26
.end method

.method final f()V
    .registers 9

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v3, p0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {p0, v3, v0, v4}, Lcom/twitter/android/widget/TapRefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->a(I)V

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_6e

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_75

    iget v5, p0, Lcom/twitter/android/widget/TapRefreshableListView;->k:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getListPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getListPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_70

    const/high16 v0, 0x4000

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_49
    invoke-virtual {v3, v5, v0}, Landroid/view/View;->measure(II)V

    :goto_4c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getListPaddingLeft()I

    move-result v5

    if-eqz v1, :cond_79

    add-int/2addr v0, v5

    add-int v1, v2, v4

    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :goto_61
    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->b:Lcom/twitter/android/widget/x;

    invoke-virtual {v0}, Lcom/twitter/android/widget/x;->onChanged()V

    goto :goto_9

    :cond_67
    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/twitter/android/widget/TapRefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/TapRefreshableListView;->a(I)V

    goto :goto_1d

    :cond_6e
    move v1, v0

    goto :goto_2c

    :cond_70
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_49

    :cond_75
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/TapRefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_4c

    :cond_79
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_61
.end method

.method public final getHeaderViewsCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->i:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_a
.end method

.method protected final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iput p1, p0, Lcom/twitter/android/widget/TapRefreshableListView;->k:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->d()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/twitter/android/widget/aa;

    invoke-virtual {p1}, Lcom/twitter/android/widget/aa;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/twitter/android/widget/aa;->a:I

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->b:Lcom/twitter/android/widget/x;

    invoke-virtual {v0}, Lcom/twitter/android/widget/x;->onChanged()V

    :cond_19
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lcom/twitter/android/widget/aa;

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/aa;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/twitter/android/widget/TapRefreshableListView;->d:I

    iput v1, v0, Lcom/twitter/android/widget/aa;->a:I

    return-object v0
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/TapRefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8

    new-instance v0, Lcom/twitter/android/widget/x;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/x;-><init>(Lcom/twitter/android/widget/TapRefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->b:Lcom/twitter/android/widget/x;

    new-instance v0, Lcom/twitter/android/widget/y;

    iget-object v2, p0, Lcom/twitter/android/widget/TapRefreshableListView;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/twitter/android/widget/TapRefreshableListView;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/twitter/android/widget/TapRefreshableListView;->b:Lcom/twitter/android/widget/x;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/y;-><init>(Lcom/twitter/android/widget/TapRefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/x;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    invoke-virtual {v0}, Lcom/twitter/android/widget/y;->a()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->e:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/TapRefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/twitter/android/widget/TapRefreshableListView;->j:Lcom/twitter/android/widget/y;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
