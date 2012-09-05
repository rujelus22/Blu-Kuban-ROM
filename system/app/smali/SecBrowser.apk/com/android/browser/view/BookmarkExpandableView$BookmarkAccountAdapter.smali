.class Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookmarkAccountAdapter"
.end annotation


# instance fields
.field mBreadcrumbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BreadCrumbView;",
            ">;"
        }
    .end annotation
.end field

.field mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mLastViewWidth:I

.field mObserver:Landroid/database/DataSetObserver;

.field mRowCount:I

.field mRowPadding:I

.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 376
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 362
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 363
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 364
    new-instance v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;-><init>(Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;)V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 377
    #setter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/browser/view/BookmarkExpandableView;->access$402(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)Landroid/content/Context;

    .line 378
    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    .line 381
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 387
    return-void
.end method

.method public getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;
    .registers 7
    .parameter "groupPosition"

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 515
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    if-nez v1, :cond_51

    .line 516
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #crumbs:Lcom/android/browser/BreadCrumbView;
    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 518
    .restart local v1       #crumbs:Lcom/android/browser/BreadCrumbView;
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 519
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 520
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 521
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, bookmarks:Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    .line 524
    const/high16 v2, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/BreadCrumbView;->setTag(ILjava/lang/Object;)V

    .line 525
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 526
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v0           #bookmarks:Ljava/lang/String;
    :cond_51
    return-object v1
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 396
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 549
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 550
    const/4 v1, 0x1

    .line 552
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getChildTypeCount()I
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 402
    if-nez p4, :cond_e

    .line 403
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040005

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 405
    :cond_e
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 406
    .local v1, childAdapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 407
    .local v7, rowCount:I
    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    .line 408
    const/4 v7, 0x1

    :cond_20
    move-object/from16 v6, p4

    .line 410
    check-cast v6, Landroid/widget/LinearLayout;

    .line 411
    .local v6, row:Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-le v9, v7, :cond_32

    .line 412
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 414
    :cond_32
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v7, :cond_c9

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, cv:Landroid/view/View;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-le v9, v3, :cond_40

    .line 417
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 419
    :cond_40
    mul-int v9, p2, v7

    add-int v5, v9, v3

    .line 420
    .local v5, realChildPosition:I
    invoke-virtual {v1, v5}, Lcom/android/browser/BrowserBookmarksAdapter;->getItemId(I)J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsOpBookmark(JLandroid/content/Context;)Z

    move-result v4

    .line 421
    .local v4, isOpbookmark:Z
    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_c1

    if-nez v4, :cond_c1

    .line 422
    invoke-virtual {v1, v5, v2, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 423
    .local v8, v:Landroid/view/View;
    const/high16 v9, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    const v9, 0x7f0d0001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 425
    const v9, 0x7f0d0002

    invoke-virtual {v1, v5}, Lcom/android/browser/BrowserBookmarksAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 426
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v9}, Lcom/android/browser/view/BookmarkExpandableView;->access$500(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mLongClickable:Z
    invoke-static {v9}, Lcom/android/browser/view/BookmarkExpandableView;->access$600(Lcom/android/browser/view/BookmarkExpandableView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setLongClickable(Z)V

    .line 428
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;
    invoke-static {v9}, Lcom/android/browser/view/BookmarkExpandableView;->access$100(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/BookmarkDragHandler;

    move-result-object v9

    if-eqz v9, :cond_ab

    .line 429
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mChildOnLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v9}, Lcom/android/browser/view/BookmarkExpandableView;->access$700(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnLongClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 430
    iget-object v9, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;
    invoke-static {v9}, Lcom/android/browser/view/BookmarkExpandableView;->access$100(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/BookmarkDragHandler;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/browser/BookmarkDragHandler;->registerBookmarkDragHandler(Landroid/view/View;)V

    .line 432
    :cond_ab
    if-nez v2, :cond_b3

    .line 433
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    .end local v8           #v:Landroid/view/View;
    :cond_b0
    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 434
    .restart local v8       #v:Landroid/view/View;
    :cond_b3
    if-eq v2, v8, :cond_bc

    .line 435
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 436
    invoke-virtual {v6, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_b0

    .line 438
    :cond_bc
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b0

    .line 440
    .end local v8           #v:Landroid/view/View;
    :cond_c1
    if-eqz v2, :cond_b0

    .line 441
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b0

    .line 444
    .end local v2           #cv:Landroid/view/View;
    .end local v4           #isOpbookmark:Z
    .end local v5           #realChildPosition:I
    :cond_c9
    return-object v6
.end method

.method public getChildrenCount(I)I
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 450
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 451
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    .line 453
    :goto_13
    return v1

    :cond_14
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_13
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 485
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 491
    if-nez p3, :cond_15

    .line 492
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040006

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 493
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$1000(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    :cond_15
    const/high16 v4, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 496
    const v4, 0x7f0d001d

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 497
    .local v0, crumbHolder:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 499
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 500
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 502
    :cond_3d
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 503
    const v4, 0x7f0d001c

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 504
    .local v3, name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 505
    .local v2, groupName:Ljava/lang/String;
    if-nez v2, :cond_60

    .line 506
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0178

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 508
    :cond_60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 510
    return-object p3
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public measureChildren(I)V
    .registers 6
    .parameter "viewWidth"

    .prologue
    .line 467
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    if-ne v3, p1, :cond_5

    .line 481
    :cond_4
    :goto_4
    return-void

    .line 469
    :cond_5
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$800(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    div-int v1, p1, v3

    .line 470
    .local v1, rowCount:I
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$900(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    if-lez v3, :cond_1f

    .line 471
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$900(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 473
    :cond_1f
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$800(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    mul-int/2addr v3, v1

    sub-int v3, p1, v3

    div-int/lit8 v2, v3, 0x2

    .line 474
    .local v2, rowPadding:I
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    if-ne v1, v3, :cond_32

    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    if-eq v2, v3, :cond_3f

    :cond_32
    const/4 v0, 0x1

    .line 475
    .local v0, notify:Z
    :goto_33
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 476
    iput v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 477
    iput p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 478
    if-eqz v0, :cond_4

    .line 479
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 474
    .end local v0           #notify:Z
    :cond_3f
    const/4 v0, 0x0

    goto :goto_33
.end method
