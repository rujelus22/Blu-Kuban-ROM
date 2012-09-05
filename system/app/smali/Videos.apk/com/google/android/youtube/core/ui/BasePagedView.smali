.class public abstract Lcom/google/android/youtube/core/ui/BasePagedView;
.super Landroid/widget/LinearLayout;
.source "BasePagedView.java"

# interfaces
.implements Lcom/google/android/youtube/core/ui/PagedView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/BasePagedView$1;,
        Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private adapterObserver:Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;

.field protected final emptyText:Ljava/lang/String;

.field protected final emptyTextView:Landroid/widget/TextView;

.field protected final emptyView:Landroid/view/ViewGroup;

.field protected final errorTextView:Landroid/widget/TextView;

.field protected final errorView:Landroid/view/ViewGroup;

.field protected itemsView:Landroid/view/View;

.field private layout:Landroid/widget/FrameLayout;

.field protected final loadingView:Landroid/view/View;

.field protected final mainView:Landroid/view/ViewGroup;

.field private final maxItems:I

.field protected onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

.field protected final retryButton:Landroid/widget/Button;

.field protected final statusView:Lcom/google/android/youtube/core/ui/PagedView$StatusView;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 17
    .parameter "mainViewId"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object v0, Lcom/google/android/youtube/R$styleable;->BasePagedView:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 68
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyText:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOrientation(I)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    .line 72
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .local v8, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v8}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 77
    .local v7, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 82
    .local v9, statusViewId:I
    if-lez v9, :cond_dd

    const/4 v0, 0x1

    :goto_44
    const-string v1, "no statusView provided"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/google/android/youtube/core/ui/DefaultStatusView;

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/DefaultStatusView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->statusView:Lcom/google/android/youtube/core/ui/PagedView$StatusView;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    .line 93
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->maxItems:I

    .line 95
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingLeft()I

    move-result v2

    .line 96
    .local v2, l:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingTop()I

    move-result v3

    .line 97
    .local v3, t:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingRight()I

    move-result v4

    .line 98
    .local v4, r:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingBottom()I

    move-result v5

    .line 99
    .local v5, b:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 101
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v1, v10, v11}, Lcom/google/android/youtube/core/ui/BasePagedView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    new-instance v0, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;Lcom/google/android/youtube/core/ui/BasePagedView$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapterObserver:Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;

    .line 107
    return-void

    .line 82
    .end local v2           #l:I
    .end local v3           #t:I
    .end local v4           #r:I
    .end local v5           #b:I
    :cond_dd
    const/4 v0, 0x0

    goto/16 :goto_44
.end method

.method private addPadding(Landroid/view/View;IIII)V
    .registers 10
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    return-void
.end method

.method private switchTo(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 182
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2b

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    if-ne v0, p1, :cond_2d

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2f

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    if-ne v3, p1, :cond_31

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    :cond_2b
    move v0, v2

    .line 182
    goto :goto_a

    :cond_2d
    move v0, v2

    .line 183
    goto :goto_14

    :cond_2f
    move v0, v2

    .line 184
    goto :goto_1e

    :cond_31
    move v1, v2

    .line 185
    goto :goto_27
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;I)V

    .line 119
    return-void
.end method

.method public final getAdapter()Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    return-object v0
.end method

.method public getEmptyText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getItemsView()Landroid/view/View;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    return-object v0
.end method

.method public final getLoadingView()Landroid/view/View;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method protected getMainView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMaxItems()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->maxItems:I

    return v0
.end method

.method public final getRetryButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getStatusView()Lcom/google/android/youtube/core/ui/PagedView$StatusView;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->statusView:Lcom/google/android/youtube/core/ui/PagedView$StatusView;

    return-object v0
.end method

.method public resetScrollPosition()V
    .registers 1

    .prologue
    .line 230
    return-void
.end method

.method public setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<*>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    new-instance v1, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;Lcom/google/android/youtube/core/ui/BasePagedView$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 140
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 144
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 149
    return-void
.end method

.method public final setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public final setOnScrollListener(Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    .line 132
    return-void
.end method

.method public final showEmpty()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public final showEmpty(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public showItems()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public final showLoading()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public final showRecoverableError(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 175
    return-void
.end method
