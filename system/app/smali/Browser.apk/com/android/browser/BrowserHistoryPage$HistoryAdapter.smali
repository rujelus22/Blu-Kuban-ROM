.class Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field mFaviconBackground:Landroid/graphics/drawable/Drawable;

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mMostVisited:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 529
    invoke-static {p2}, Lcom/android/browser/BookmarkUtils;->createListFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private isMostVisitedEmpty()Z
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    .line 535
    invoke-super {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 536
    return-void
.end method

.method changeMostVisitedCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-ne v0, p1, :cond_5

    .line 551
    :goto_4
    return-void

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    .line 543
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 544
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_15
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    .line 547
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_22

    .line 548
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 550
    :cond_22
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public getChildId(II)J
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 557
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 559
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_f
    return-wide v1

    :cond_10
    const-wide/16 v1, 0x0

    goto :goto_f
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 636
    if-eqz p4, :cond_8

    instance-of v6, p4, Lcom/android/browser/HistoryItem;

    if-nez v6, :cond_32

    .line 637
    :cond_8
    new-instance v2, Lcom/android/browser/HistoryItem;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 640
    .local v2, item:Lcom/android/browser/HistoryItem;
    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingLeft()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/browser/HistoryItem;->setPadding(IIII)V

    .line 644
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Lcom/android/browser/HistoryItem;->setFaviconBackground(Landroid/graphics/drawable/Drawable;)V

    .line 650
    :goto_2b
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v6

    if-nez v6, :cond_36

    .line 664
    :goto_31
    return-object v2

    .end local v2           #item:Lcom/android/browser/HistoryItem;
    :cond_32
    move-object v2, p4

    .line 646
    check-cast v2, Lcom/android/browser/HistoryItem;

    .restart local v2       #item:Lcom/android/browser/HistoryItem;
    goto :goto_2b

    .line 654
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 655
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/browser/HistoryItem;->setName(Ljava/lang/String;)V

    .line 656
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/browser/HistoryItem;->setUrl(Ljava/lang/String;)V

    .line 658
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 659
    .local v1, data:[B
    if-eqz v1, :cond_59

    .line 660
    array-length v6, v1

    invoke-static {v1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 663
    :cond_59
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_64

    :goto_60
    invoke-virtual {v2, v4}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    goto :goto_31

    :cond_64
    move v4, v5

    goto :goto_60
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 569
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_15

    .line 570
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 571
    const/4 v0, 0x0

    .line 575
    :goto_d
    return v0

    .line 573
    :cond_e
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_d

    .line 575
    :cond_15
    invoke-super {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    goto :goto_d
.end method

.method getCursor(I)Landroid/database/Cursor;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 594
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    .line 596
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;

    goto :goto_8
.end method

.method public getGroupCount()I
    .registers 3

    .prologue
    .line 564
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 602
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-lt p1, v2, :cond_3d

    .line 603
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 604
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Data is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1a
    if-eqz p3, :cond_20

    instance-of v2, p3, Landroid/widget/TextView;

    if-nez v2, :cond_39

    .line 608
    :cond_20
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 609
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f04001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 613
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v1, item:Landroid/widget/TextView;
    :goto_32
    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 616
    .end local v1           #item:Landroid/widget/TextView;
    :goto_38
    return-object v1

    :cond_39
    move-object v1, p3

    .line 611
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #item:Landroid/widget/TextView;
    goto :goto_32

    .line 616
    .end local v1           #item:Landroid/widget/TextView;
    :cond_3d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_38
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 580
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isMostVisitedEmpty()Z

    move-result v0

    goto :goto_7
.end method

.method moveCursorToChildPosition(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 622
    invoke-super {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 623
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 624
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 625
    const/4 v0, 0x1

    .line 629
    :goto_18
    return v0

    .line 627
    :cond_19
    const/4 v0, 0x0

    goto :goto_18

    .line 629
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    goto :goto_18
.end method
