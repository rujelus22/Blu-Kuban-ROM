.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private final mCheckStates:Landroid/util/SparseIntArray;

.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentView:Landroid/widget/ListView;

.field private mCurrentViewIsExpandableListView:Z

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ExpandableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEmptyView:Landroid/view/View;

.field private mFooterView:Landroid/view/View;

.field private mIdColumnId:I

.field private mIsSortedBySize:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumndId:I

.field mSelectedCountFormat:Ljava/lang/String;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeOrderedListView:Landroid/widget/ListView;

.field private mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mSortOption:Landroid/widget/Button;

.field private mStatusColumnId:I

.field powermanager:Landroid/os/PowerManager;

.field private timeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    .line 90
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    .line 106
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    .line 124
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 131
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 137
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->powermanager:Landroid/os/PowerManager;

    .line 338
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->deleteAllDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/providers/downloads/ui/DownloadList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->promptClearList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private activeListView()Landroid/widget/ListView;
    .registers 3

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    if-eqz v0, :cond_29

    .line 565
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 566
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 567
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 568
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 577
    :goto_1d
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_26

    .line 578
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 580
    :cond_26
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0

    .line 571
    :cond_29
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 572
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 573
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 574
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    goto :goto_1d
.end method

.method private checkSelectionForDeletedEntries()V
    .registers 5

    .prologue
    .line 859
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 860
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_a
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_27

    .line 862
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    .line 866
    :cond_27
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 867
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 868
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 871
    :cond_45
    return-void
.end method

.method private chooseListToShow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 532
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2d

    .line 536
    :cond_19
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    :goto_23
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2c

    .line 547
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    .line 549
    :cond_2c
    return-void

    .line 539
    :cond_2d
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 541
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    .line 542
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 543
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_23
.end method

.method private deleteAllDownload()V
    .registers 6

    .prologue
    .line 799
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 800
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    :goto_a
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_27

    .line 802
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_a

    .line 805
    :cond_27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 806
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V

    goto :goto_2b

    .line 808
    .end local v2           #id:Ljava/lang/Long;
    :cond_3f
    return-void
.end method

.method private deleteDownload(J)V
    .registers 6
    .parameter "downloadId"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    .line 778
    return-void
.end method

.method private ensureSomeGroupIsExpanded()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method private ensureSomeGroupIsExpanded_start()V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_7

    .line 959
    :goto_6
    return-object v0

    .line 949
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 951
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 953
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_45

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 959
    :cond_45
    const-string v0, "*/*"

    goto :goto_6
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 963
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 964
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_16

    .line 966
    move-object v3, v2

    goto :goto_6

    .line 967
    :cond_16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 968
    const/4 v0, 0x0

    .line 972
    .end local v2           #s:Ljava/lang/String;
    :cond_1d
    if-eqz v0, :cond_20

    .end local v3           #str:Ljava/lang/String;
    :goto_1f
    return-object v3

    .restart local v3       #str:Ljava/lang/String;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .registers 4
    .parameter "downloadId"

    .prologue
    .line 587
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$8;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 679
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 703
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    .line 681
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 682
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 686
    :cond_1c
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 690
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 691
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 693
    :cond_2f
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 697
    :pswitch_37
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 700
    :pswitch_3f
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 679
    nop

    :pswitch_data_48
    .packed-switch 0x3ee
        :pswitch_21
        :pswitch_37
        :pswitch_3f
        :pswitch_e
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .registers 4
    .parameter "downloadId"

    .prologue
    .line 599
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$9;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 634
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 635
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_68

    .line 673
    :goto_10
    return-void

    .line 638
    :sswitch_11
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_10

    .line 642
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 643
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 644
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080016

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$10;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$10;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_10

    .line 661
    :cond_57
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_10

    .line 666
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_10

    .line 670
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_10

    .line 635
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_11
        0x4 -> :sswitch_15
        0x8 -> :sswitch_5b
        0x10 -> :sswitch_5f
    .end sparse-switch
.end method

.method private haveCursors()Z
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .registers 9
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 708
    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 718
    :cond_9
    :goto_9
    return v4

    .line 712
    :cond_a
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 713
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 716
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_9
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 850
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private moveToDownload(J)Z
    .registers 5
    .parameter "downloadId"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_21

    .line 880
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1b

    .line 881
    const/4 v0, 0x1

    .line 884
    :goto_1a
    return v0

    .line 879
    :cond_1b
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 884
    :cond_21
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    .line 611
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 613
    .local v3, localUri:Landroid/net/Uri;
    :try_start_a
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_17} :catch_31
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_6e

    .line 623
    :goto_17
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 627
    :try_start_2d
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_61

    .line 631
    .end local v2           #intent:Landroid/content/Intent;
    :goto_30
    return-void

    .line 614
    :catch_31
    move-exception v1

    .line 615
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v4, "DownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f08000f

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_30

    .line 628
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_61
    move-exception v0

    .line 629
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f080015

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_30

    .line 619
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_6e
    move-exception v4

    goto :goto_17
.end method

.method private promptClearList()V
    .registers 6

    .prologue
    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08005d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080039

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$11;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$11;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 829
    return-void
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 766
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 768
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .registers 6
    .parameter

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 742
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 743
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    return-void
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    .line 288
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 289
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 292
    .local v1, modeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
    const/high16 v2, 0x7f0b

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    .line 293
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 294
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 295
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 315
    const v2, 0x7f0b0001

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    .line 316
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 317
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 318
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 328
    const v2, 0x7f0b0006

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    .line 329
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, mEmptyStringView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFooterView:Landroid/view/View;

    .line 336
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .registers 7
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 726
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080017

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 732
    return-void
.end method


# virtual methods
.method public getCheckedDownloadID(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method getCurrentView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0
.end method

.method getExpandableListView()Landroid/widget/ExpandableListView;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getSelectedIdsCount()I
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method handleDownloadsChanged()V
    .registers 3

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 841
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 842
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 844
    :cond_26
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 847
    :cond_2b
    return-void
.end method

.method isCurrentViewExpandableListView()Z
    .registers 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    return v0
.end method

.method public isDownloadSelected(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 167
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 169
    const-string v3, "download"

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 170
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v6}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 171
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 174
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 175
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v4, "total_size"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    .line 179
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->powermanager:Landroid/os/PowerManager;

    .line 182
    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 198
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 199
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 201
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 203
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 205
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "local_uri"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 207
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "media_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 209
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "reason"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    .line 212
    new-instance v3, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    .line 213
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 214
    new-instance v3, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 215
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded_start()V

    .line 221
    :cond_b0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 222
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_c4

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 224
    iput-boolean v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 226
    :cond_c4
    const v3, 0x7f0b0004

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    .line 227
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    new-instance v4, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v4, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 240
    const v3, 0x7f0b0005

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 241
    .local v1, clearAllOption:Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .end local v1           #clearAllOption:Landroid/widget/Button;
    :cond_f7
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 251
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 749
    if-eqz p3, :cond_11

    .line 750
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :goto_10
    return-void

    .line 752
    :cond_11
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 468
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 469
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 470
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 473
    :cond_17
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->powermanager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 475
    .local v0, bIsScreenOn:Z
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 477
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 478
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 481
    :cond_2e
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 483
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 515
    const-string v4, "isSortedBySize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 516
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 517
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 518
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_42

    array-length v4, v3

    if-lez v4, :cond_42

    .line 521
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v4, v3

    if-ge v1, v4, :cond_42

    .line 522
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 525
    .end local v1           #i:I
    :cond_42
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 526
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 451
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 452
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 453
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 454
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 458
    :cond_1a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/downloads/ui/DownloadList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 13
    .parameter "outState"

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 491
    const-string v9, "isSortedBySize"

    iget-boolean v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 493
    .local v5, len:I
    if-nez v5, :cond_13

    .line 510
    :goto_12
    return-void

    .line 496
    :cond_13
    new-array v8, v5, [J

    .line 497
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 498
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 499
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 500
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 501
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 502
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 503
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 504
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 506
    goto :goto_24

    .line 507
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    :cond_51
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 508
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_12
.end method

.method setActionModeTitle(Landroid/view/ActionMode;)V
    .registers 7
    .parameter "mode"

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 435
    .local v0, numSelected:I
    if-lez v0, :cond_29

    .line 436
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    :goto_28
    return-void

    .line 440
    :cond_29
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_28
.end method

.method public setChecked(IJZ)V
    .registers 7
    .parameter "position"
    .parameter "downloadID"
    .parameter "checked"

    .prologue
    .line 782
    if-eqz p4, :cond_9

    .line 783
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    long-to-int v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    :goto_8
    return-void

    .line 785
    :cond_9
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_8
.end method

.method public shareDownloadedFiles()Z
    .registers 13

    .prologue
    const v11, 0x7f080039

    const v10, 0x7f08000f

    const v9, 0x1080027

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 891
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 892
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_8d

    .line 893
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 896
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 897
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 898
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 901
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_62

    .line 903
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 939
    :goto_61
    return v0

    .line 911
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 914
    :cond_72
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 915
    invoke-direct {p0, v5}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    :cond_7e
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 939
    goto :goto_61

    .line 919
    :cond_8d
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_97
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 922
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c0

    .line 924
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 929
    goto :goto_61

    .line 932
    :cond_c0
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 934
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_97
.end method
