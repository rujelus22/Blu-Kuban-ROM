.class public Lcom/android/calendar/StickyHeaderListView;
.super Landroid/widget/FrameLayout;
.source "StickyHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;,
        Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/Adapter;

.field protected mChildViewsCreated:Z

.field protected mContext:Landroid/content/Context;

.field protected mCurrentSectionPos:I

.field protected mDoHeaderReset:Z

.field protected mDummyHeader:Landroid/view/View;

.field protected mHeaderHeightListener:Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;

.field protected mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

.field private mLastStickyHeaderHeight:I

.field protected mListView:Landroid/widget/ListView;

.field protected mListViewHeadersCount:I

.field protected mListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mNextSectionPosition:I

.field private mSeparatorView:Landroid/view/View;

.field private mSeparatorWidth:I

.field protected mStickyHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v1, p0, Lcom/android/calendar/StickyHeaderListView;->mChildViewsCreated:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/calendar/StickyHeaderListView;->mDoHeaderReset:Z

    .line 56
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    .line 58
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

    .line 59
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mHeaderHeightListener:Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;

    .line 60
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 63
    iput-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 67
    iput v1, p0, Lcom/android/calendar/StickyHeaderListView;->mLastStickyHeaderHeight:I

    .line 73
    iput v2, p0, Lcom/android/calendar/StickyHeaderListView;->mCurrentSectionPos:I

    .line 75
    iput v2, p0, Lcom/android/calendar/StickyHeaderListView;->mNextSectionPosition:I

    .line 76
    iput v1, p0, Lcom/android/calendar/StickyHeaderListView;->mListViewHeadersCount:I

    .line 200
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mContext:Landroid/content/Context;

    .line 203
    return-void
.end method

.method private setChildViews()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/android/calendar/StickyHeaderListView;->getChildCount()I

    move-result v1

    .line 373
    .local v1, iChildNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_18

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/calendar/StickyHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 375
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_15

    .line 376
    check-cast v3, Landroid/widget/ListView;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/calendar/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V

    .line 373
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 381
    :cond_18
    iget-object v4, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_26

    .line 382
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/calendar/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V

    .line 386
    :cond_26
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/calendar/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 387
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x30

    invoke-direct {v2, v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 389
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v4, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    iput-boolean v6, p0, Lcom/android/calendar/StickyHeaderListView;->mChildViewsCreated:Z

    .line 393
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 356
    iget-boolean v0, p0, Lcom/android/calendar/StickyHeaderListView;->mChildViewsCreated:Z

    if-nez v0, :cond_a

    .line 357
    invoke-direct {p0}, Lcom/android/calendar/StickyHeaderListView;->setChildViews()V

    .line 359
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/StickyHeaderListView;->mDoHeaderReset:Z

    .line 360
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 347
    iget-boolean v0, p0, Lcom/android/calendar/StickyHeaderListView;->mChildViewsCreated:Z

    if-nez v0, :cond_a

    .line 348
    invoke-direct {p0}, Lcom/android/calendar/StickyHeaderListView;->setChildViews()V

    .line 350
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/StickyHeaderListView;->mDoHeaderReset:Z

    .line 351
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 231
    invoke-virtual {p0, p2}, Lcom/android/calendar/StickyHeaderListView;->updateStickyHeader(I)V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 236
    :cond_c
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 216
    :cond_9
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 137
    if-eqz p1, :cond_4

    .line 138
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    .line 143
    :cond_4
    return-void
.end method

.method public setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mHeaderHeightListener:Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;

    .line 180
    return-void
.end method

.method public setHeaderSeparator(II)V
    .registers 6
    .parameter "color"
    .parameter "width"

    .prologue
    .line 245
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    .line 246
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-direct {v0, v1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 248
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    iput p2, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorWidth:I

    .line 251
    iget-object v1, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/calendar/StickyHeaderListView;->addView(Landroid/view/View;)V

    .line 252
    return-void
.end method

.method public setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V
    .registers 2
    .parameter "indexer"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

    .line 153
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 3
    .parameter "lv"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/StickyHeaderListView;->mListViewHeadersCount:I

    .line 164
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/calendar/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 176
    return-void
.end method

.method protected updateStickyHeader(I)V
    .registers 15
    .parameter "firstVisibleItem"

    .prologue
    .line 257
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_11

    .line 258
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/calendar/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 261
    :cond_11
    iget v9, p0, Lcom/android/calendar/StickyHeaderListView;->mListViewHeadersCount:I

    sub-int/2addr p1, v9

    .line 262
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v9, :cond_d8

    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

    if-eqz v9, :cond_d8

    iget-boolean v9, p0, Lcom/android/calendar/StickyHeaderListView;->mDoHeaderReset:Z

    if-eqz v9, :cond_d8

    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, sectionSize:I
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

    invoke-interface {v9, p1}, Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;->getHeaderPositionFromItemPosition(I)I

    move-result v5

    .line 269
    .local v5, sectionPos:I
    const/4 v2, 0x0

    .line 270
    .local v2, newView:Z
    iget v9, p0, Lcom/android/calendar/StickyHeaderListView;->mCurrentSectionPos:I

    if-eq v5, v9, :cond_4d

    .line 273
    const/4 v9, -0x1

    if-ne v5, v9, :cond_d9

    .line 274
    const/4 v6, 0x0

    .line 275
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/calendar/StickyHeaderListView;->removeView(Landroid/view/View;)V

    .line 276
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    iput-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 277
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_44

    .line 278
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_44
    const/4 v2, 0x1

    .line 292
    :goto_45
    iput v5, p0, Lcom/android/calendar/StickyHeaderListView;->mCurrentSectionPos:I

    .line 293
    add-int v9, v6, v5

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/calendar/StickyHeaderListView;->mNextSectionPosition:I

    .line 300
    :cond_4d
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    if-eqz v9, :cond_d8

    .line 301
    iget v9, p0, Lcom/android/calendar/StickyHeaderListView;->mNextSectionPosition:I

    sub-int/2addr v9, p1

    add-int/lit8 v4, v9, -0x1

    .line 302
    .local v4, sectionLastItemPosition:I
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 303
    .local v7, stickyHeaderHeight:I
    if-nez v7, :cond_64

    .line 304
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 308
    :cond_64
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mHeaderHeightListener:Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;

    if-eqz v9, :cond_73

    iget v9, p0, Lcom/android/calendar/StickyHeaderListView;->mLastStickyHeaderHeight:I

    if-eq v9, v7, :cond_73

    .line 310
    iput v7, p0, Lcom/android/calendar/StickyHeaderListView;->mLastStickyHeaderHeight:I

    .line 311
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mHeaderHeightListener:Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;

    invoke-interface {v9, v7}, Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;->OnHeaderHeightChanged(I)V

    .line 314
    :cond_73
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, SectionLastView:Landroid/view/View;
    if-eqz v0, :cond_110

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v7, :cond_110

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 317
    .local v1, lastViewBottom:I
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    sub-int v10, v1, v7

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 318
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_98

    .line 319
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .end local v1           #lastViewBottom:I
    :cond_98
    :goto_98
    if-eqz v2, :cond_d8

    .line 328
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/calendar/StickyHeaderListView;->addView(Landroid/view/View;)V

    .line 330
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_d2

    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    iget-object v10, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d2

    .line 331
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorWidth:I

    invoke-direct {v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 335
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_d2
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .end local v0           #SectionLastView:Landroid/view/View;
    .end local v2           #newView:Z
    .end local v4           #sectionLastItemPosition:I
    .end local v5           #sectionPos:I
    .end local v6           #sectionSize:I
    .end local v7           #stickyHeaderHeight:I
    :cond_d8
    return-void

    .line 283
    .restart local v2       #newView:Z
    .restart local v5       #sectionPos:I
    .restart local v6       #sectionSize:I
    :cond_d9
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mIndexer:Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;

    invoke-interface {v9, v5}, Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;->getHeaderItemsNumber(I)I

    move-result v6

    .line 284
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    iget v10, p0, Lcom/android/calendar/StickyHeaderListView;->mListViewHeadersCount:I

    add-int/2addr v10, v5

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-interface {v9, v10, v11, v12}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 285
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/android/calendar/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 288
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/calendar/StickyHeaderListView;->removeView(Landroid/view/View;)V

    .line 289
    iput-object v8, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_45

    .line 321
    .end local v8           #v:Landroid/view/View;
    .restart local v0       #SectionLastView:Landroid/view/View;
    .restart local v4       #sectionLastItemPosition:I
    .restart local v7       #stickyHeaderHeight:I
    :cond_110
    if-eqz v7, :cond_98

    .line 322
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 323
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_98

    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    iget-object v10, p0, Lcom/android/calendar/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_98

    .line 324
    iget-object v9, p0, Lcom/android/calendar/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_98
.end method
