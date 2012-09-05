.class public Lcom/android/providers/downloads/ui/SecDownloadList;
.super Landroid/app/Activity;
.source "SecDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;
    }
.end annotation


# static fields
.field private static mOnPauseStatus:Z


# instance fields
.field private bDDinfoViewed:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private final mCheckStates:Landroid/util/SparseIntArray;

.field private mContentObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentView:Landroid/widget/ListView;

.field private mCurrentViewIsExpandableListView:Z

.field private mDDDescriptionId:I

.field private mDDNameId:I

.field private mDDSizeId:I

.field private mDDTypeId:I

.field private mDDVendorId:I

.field private mDDVersionId:I

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ExpandableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

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
            "Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeOrderedListView:Landroid/widget/ListView;

.field private mSizeSortedAdapter:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mSortOption:Landroid/widget/Button;

.field private mStatusColumnId:I

.field private mStorageTypeId:I

.field powermanager:Landroid/os/PowerManager;

.field private timeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;

    .line 104
    new-instance v0, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;Lcom/android/providers/downloads/ui/SecDownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;

    .line 114
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->bDDinfoViewed:Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    .line 135
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    .line 153
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentViewIsExpandableListView:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    .line 160
    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 166
    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->powermanager:Landroid/os/PowerManager;

    .line 387
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/providers/downloads/ui/SecDownloadList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->refresh()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/providers/downloads/ui/SecDownloadList;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/app/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/providers/downloads/ui/SecDownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->deleteAllDownload()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/providers/downloads/ui/SecDownloadList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->bDDinfoViewed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->ensureSomeGroupIsExpanded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/SecDownloadList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/providers/downloads/ui/SecDownloadList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->promptClearList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/SecDownloadList;)Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private activeListView()Landroid/widget/ListView;
    .registers 3

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    if-eqz v0, :cond_29

    .line 658
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 659
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 660
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->setTitle(I)V

    .line 661
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentViewIsExpandableListView:Z

    .line 670
    :goto_1d
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_26

    .line 671
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 673
    :cond_26
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0

    .line 664
    :cond_29
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 665
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 666
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->setTitle(I)V

    .line 667
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentViewIsExpandableListView:Z

    goto :goto_1d
.end method

.method private checkSelectionForDeletedEntries()V
    .registers 5

    .prologue
    .line 1032
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1033
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_a
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1035
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    .line 1039
    :cond_27
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

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

    .line 1040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 1044
    :cond_45
    return-void
.end method

.method private chooseListToShow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 623
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2d

    .line 627
    :cond_19
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 639
    :goto_23
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2c

    .line 640
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    .line 642
    :cond_2c
    return-void

    .line 631
    :cond_2d
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 634
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    .line 635
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 636
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_23
.end method

.method private converSize(I)Ljava/lang/String;
    .registers 14
    .parameter

    .prologue
    const/high16 v6, 0x4480

    const-wide/high16 v10, 0x3ff0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1313
    const-string v0, "MB"

    .line 1314
    const-string v1, "KB"

    .line 1315
    const-string v2, "Byte"

    .line 1317
    const-string v3, "Browser_CD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "converSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-lez p1, :cond_bc

    .line 1319
    int-to-float v3, p1

    div-float/2addr v3, v6

    .line 1320
    div-float v4, v3, v6

    .line 1322
    const-string v5, "SecDownloadList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conver sizeKB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB sizeMB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    float-to-double v5, v3

    cmpl-double v5, v5, v10

    if-lez v5, :cond_9c

    .line 1324
    float-to-double v5, v4

    cmpl-double v2, v5, v10

    if-lez v2, :cond_7c

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    :goto_7b
    return-object v0

    .line 1327
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 1329
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 1332
    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b
.end method

.method private deleteAllDownload()V
    .registers 6

    .prologue
    .line 971
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 972
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    :goto_a
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_27

    .line 974
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_a

    .line 977
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

    .line 978
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/providers/downloads/ui/SecDownloadList;->deleteDownload(J)V

    goto :goto_2b

    .line 980
    .end local v2           #id:Ljava/lang/Long;
    :cond_3f
    return-void
.end method

.method private deleteDownload(J)V
    .registers 6
    .parameter "downloadId"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->secremove([J)I

    .line 950
    return-void
.end method

.method private ensureSomeGroupIsExpanded()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/SecDownloadList$4;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$4;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method private ensureSomeGroupIsExpanded_start()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/SecDownloadList$5;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$5;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 333
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
    .line 1127
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_7

    .line 1143
    :goto_6
    return-object v0

    .line 1133
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1135
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1137
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_45

    .line 1139
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

    .line 1143
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
    .line 1146
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1147
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1148
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

    .line 1149
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_16

    .line 1150
    move-object v3, v2

    goto :goto_6

    .line 1151
    :cond_16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1152
    const/4 v0, 0x0

    .line 1156
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
    .line 680
    new-instance v0, Lcom/android/providers/downloads/ui/SecDownloadList$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList$9;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 777
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_fc

    .line 874
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    .line 779
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 780
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 784
    :cond_1c
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 788
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 789
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 791
    :cond_2f
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 795
    :sswitch_37
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 798
    :sswitch_3f
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 801
    :sswitch_47
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 804
    :sswitch_4f
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 807
    :sswitch_57
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 810
    :sswitch_5f
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 813
    :sswitch_67
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 817
    :sswitch_6f
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 822
    :sswitch_77
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 825
    :sswitch_7f
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 828
    :sswitch_87
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 831
    :sswitch_90
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 834
    :sswitch_99
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 837
    :sswitch_a2
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 840
    :sswitch_ab
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 843
    :sswitch_b4
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 847
    :sswitch_bd
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 851
    :sswitch_c6
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 854
    :sswitch_cf
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 858
    :sswitch_d8
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 863
    :sswitch_e1
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 867
    :sswitch_ea
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 870
    :sswitch_f3
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 777
    :sswitch_data_fc
    .sparse-switch
        0x190 -> :sswitch_cf
        0x196 -> :sswitch_47
        0x19b -> :sswitch_4f
        0x19c -> :sswitch_57
        0x1ea -> :sswitch_5f
        0x1ec -> :sswitch_67
        0x1ed -> :sswitch_d8
        0x1ee -> :sswitch_e1
        0x1ef -> :sswitch_e1
        0x1f0 -> :sswitch_ea
        0x1f1 -> :sswitch_d8
        0x259 -> :sswitch_6f
        0x25a -> :sswitch_6f
        0x262 -> :sswitch_77
        0x26c -> :sswitch_7f
        0x26d -> :sswitch_87
        0x276 -> :sswitch_90
        0x277 -> :sswitch_99
        0x278 -> :sswitch_a2
        0x279 -> :sswitch_ab
        0x27a -> :sswitch_77
        0x281 -> :sswitch_e1
        0x28a -> :sswitch_f3
        0x28b -> :sswitch_ea
        0x28c -> :sswitch_c6
        0x28d -> :sswitch_c6
        0x28e -> :sswitch_bd
        0x28f -> :sswitch_bd
        0x290 -> :sswitch_b4
        0x291 -> :sswitch_77
        0x3ee -> :sswitch_21
        0x3ef -> :sswitch_37
        0x3f0 -> :sswitch_3f
        0x3f1 -> :sswitch_e
    .end sparse-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .registers 4
    .parameter "downloadId"

    .prologue
    .line 692
    new-instance v0, Lcom/android/providers/downloads/ui/SecDownloadList$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList$10;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 893
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 731
    iget v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 732
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_68

    .line 771
    :goto_10
    return-void

    .line 736
    :sswitch_11
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_10

    .line 740
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 741
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 742
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

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadList$11;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$11;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_10

    .line 759
    :cond_57
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_10

    .line 764
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_10

    .line 768
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_10

    .line 732
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_11
        0x4 -> :sswitch_15
        0x8 -> :sswitch_5b
        0x10 -> :sswitch_5f
        0x40 -> :sswitch_11
    .end sparse-switch
.end method

.method private haveCursors()Z
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private haveSDCard()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1338
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1339
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1340
    array-length v4, v3

    move v2, v1

    .line 1342
    :goto_f
    if-ge v2, v4, :cond_40

    .line 1343
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 1344
    if-eqz v5, :cond_3d

    .line 1345
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1346
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1347
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1348
    const/4 v0, 0x1

    .line 1354
    :goto_3c
    return v0

    .line 1342
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_40
    move v0, v1

    .line 1354
    goto :goto_3c
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 879
    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    if-nez v1, :cond_a

    .line 889
    :cond_9
    :goto_9
    return v0

    .line 883
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 887
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1023
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mReasonColumndId:I

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
    .line 1051
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1053
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1b

    .line 1054
    const/4 v0, 0x1

    .line 1057
    :goto_1a
    return v0

    .line 1052
    :cond_1b
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 1057
    :cond_21
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    .line 704
    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 706
    .local v3, localUri:Landroid/net/Uri;
    :try_start_a
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_17} :catch_31
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_8d

    .line 720
    :goto_17
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 724
    :try_start_2d
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_80

    .line 728
    .end local v2           #intent:Landroid/content/Intent;
    :goto_30
    return-void

    .line 707
    :catch_31
    move-exception v1

    .line 708
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v4, "SecDownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mStorageTypeId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_6f

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->haveSDCard()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 710
    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f08004c

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/SecDownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_30

    .line 713
    :cond_6f
    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f08000f

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/SecDownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_30

    .line 725
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_80
    move-exception v0

    .line 726
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f080015

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_30

    .line 716
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_8d
    move-exception v4

    goto :goto_17
.end method

.method private promptClearList()V
    .registers 6

    .prologue
    .line 988
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

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080039

    new-instance v2, Lcom/android/providers/downloads/ui/SecDownloadList$12;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$12;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1001
    return-void
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 937
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 939
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .registers 6
    .parameter

    .prologue
    .line 909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    const-string v1, "com.sec.android.providers.downloads"

    const-string v2, " com.sec.android.providers.downloads.SecDownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 913
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    return-void
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    .line 335
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->setContentView(I)V

    .line 336
    new-instance v1, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 339
    .local v1, modeCallback:Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;
    const/high16 v2, 0x7f0b

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    .line 340
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 341
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 342
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadList$6;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$6;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 361
    const v2, 0x7f0b0001

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    .line 362
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 363
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 364
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadList$7;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$7;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 375
    const v2, 0x7f0b0006

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mEmptyView:Landroid/view/View;

    .line 376
    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, mEmptyStringView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 383
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mFooterView:Landroid/view/View;

    .line 385
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 897
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080017

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 903
    return-void
.end method


# virtual methods
.method public getCheckedDownloadID(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method getCurrentView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0
.end method

.method getExpandableListView()Landroid/widget/ExpandableListView;
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getSelectedIdsCount()I
    .registers 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method handleDownloadsChanged()V
    .registers 3

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->checkSelectionForDeletedEntries()V

    .line 1014
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1015
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1017
    :cond_26
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1020
    :cond_2b
    return-void
.end method

.method isCurrentViewExpandableListView()Z
    .registers 2

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentViewIsExpandableListView:Z

    return v0
.end method

.method public isDownloadSelected(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    sput-boolean v6, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    .line 200
    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/SecDownloadList;->setFinishOnTouchOutside(Z)V

    .line 201
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->setupViews()V

    .line 205
    const-string v3, "download"

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 206
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager;->setSecDownloads(Z)V

    .line 207
    new-instance v0, Landroid/app/DownloadManager$SecQuery;

    invoke-direct {v0}, Landroid/app/DownloadManager$SecQuery;-><init>()V

    .line 210
    .local v0, baseQuery:Landroid/app/DownloadManager$SecQuery;
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 211
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v4, "total_size"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/app/DownloadManager$SecQuery;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$SecQuery;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    .line 215
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->powermanager:Landroid/os/PowerManager;

    .line 217
    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadList$1;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$1;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 236
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mStatusColumnId:I

    .line 238
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIdColumnId:I

    .line 240
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "local_uri"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mLocalUriColumnId:I

    .line 242
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "media_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mMediaTypeColumnId:I

    .line 244
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "reason"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mReasonColumndId:I

    .line 246
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "storage_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mStorageTypeId:I

    .line 251
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_fileName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDNameId:I

    .line 252
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_vendor"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDVendorId:I

    .line 253
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_contentSize"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDSizeId:I

    .line 254
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_majorVersion"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDVersionId:I

    .line 255
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_primaryMimeType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDTypeId:I

    .line 256
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "dd_description"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDDescriptionId:I

    .line 258
    new-instance v3, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    .line 259
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 260
    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    .line 261
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->ensureSomeGroupIsExpanded_start()V

    .line 267
    :cond_ea
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 268
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_fe

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 270
    iput-boolean v7, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    .line 272
    :cond_fe
    const v3, 0x7f0b0004

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSortOption:Landroid/widget/Button;

    .line 273
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSortOption:Landroid/widget/Button;

    new-instance v4, Lcom/android/providers/downloads/ui/SecDownloadList$2;

    invoke-direct {v4, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$2;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 286
    const v3, 0x7f0b0005

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 287
    .local v1, clearAllOption:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    new-instance v3, Lcom/android/providers/downloads/ui/SecDownloadList$3;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$3;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .end local v1           #clearAllOption:Landroid/widget/Button;
    :cond_131
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->chooseListToShow()V

    .line 297
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedCountFormat:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-ne v1, v3, :cond_28

    .line 595
    const v1, 0x7f08005f

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 596
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_28

    .line 597
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 598
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 600
    new-instance v1, Lcom/android/providers/downloads/ui/SecDownloadList$8;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/SecDownloadList$8;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 615
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_28
    return v3
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 920
    if-eqz p3, :cond_11

    .line 921
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :goto_10
    return-void

    .line 923
    :cond_11
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 523
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 525
    sput-boolean v3, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    .line 527
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 528
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 532
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->powermanager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 534
    .local v0, bIsScreenOn:Z
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_30

    if-ne v0, v3, :cond_30

    .line 536
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 537
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 540
    :cond_30
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 542
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 574
    const-string v4, "isSortedBySize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    .line 575
    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 576
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 577
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_42

    array-length v4, v3

    if-lez v4, :cond_42

    .line 580
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v4, v3

    if-ge v1, v4, :cond_42

    .line 581
    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 585
    .end local v1           #i:I
    :cond_42
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    .line 587
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->chooseListToShow()V

    .line 588
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 506
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/downloads/ui/SecDownloadList;->mOnPauseStatus:Z

    .line 508
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 509
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 511
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadList;->refresh()V

    .line 514
    :cond_1d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->timeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 13
    .parameter "outState"

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 550
    const-string v9, "isSortedBySize"

    iget-boolean v10, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    iget-object v9, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 552
    .local v5, len:I
    if-nez v5, :cond_13

    .line 569
    :goto_12
    return-void

    .line 555
    :cond_13
    new-array v8, v5, [J

    .line 556
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 557
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 558
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 559
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

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

    .line 560
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 561
    iget-object v9, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;

    .line 562
    .local v7, obj:Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 563
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 564
    add-int/lit8 v1, v1, 0x1

    .line 565
    goto :goto_24

    .line 566
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;
    :cond_51
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 567
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 568
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_12
.end method

.method setActionModeTitle(Landroid/view/ActionMode;)V
    .registers 7
    .parameter "mode"

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 489
    .local v0, numSelected:I
    if-lez v0, :cond_29

    .line 490
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    :goto_28
    return-void

    .line 494
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
    .line 954
    if-eqz p4, :cond_9

    .line 955
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    long-to-int v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    :goto_8
    return-void

    .line 957
    :cond_9
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_8
.end method

.method public shareDownloadedFiles()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1065
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1066
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_9a

    .line 1067
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;

    .line 1071
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 1072
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 1075
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_62

    .line 1077
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1123
    :goto_61
    return v0

    .line 1085
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_71} :catch_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_71} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_102

    goto :goto_28

    .line 1114
    :catch_72
    move-exception v0

    .line 1115
    const v0, 0x7f080058

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_7d
    move v0, v1

    .line 1123
    goto :goto_61

    .line 1088
    :cond_7f
    :try_start_7f
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1089
    invoke-direct {p0, v5}, Lcom/android/providers/downloads/ui/SecDownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    :cond_8b
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1112
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1113
    goto :goto_61

    .line 1093
    :cond_9a
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;

    .line 1096
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d6

    .line 1098
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1103
    goto :goto_61

    .line 1106
    :cond_d6
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_f4} :catch_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f .. :try_end_f4} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_f4} :catch_102

    goto :goto_a4

    .line 1117
    :catch_f5
    move-exception v0

    .line 1118
    const v0, 0x7f080059

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7d

    .line 1120
    :catch_102
    move-exception v0

    .line 1121
    const-string v2, "DownloadProviderUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot share.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d
.end method

.method public viewOMADDInfo(Landroid/database/Cursor;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v6, -0x100

    .line 1163
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1164
    const-string v0, "SecDownloadList"

    const-string v1, "viewOMADDInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->bDDinfoViewed:Z

    if-ne v0, v2, :cond_12

    .line 1308
    :goto_11
    return-void

    .line 1171
    :cond_12
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->bDDinfoViewed:Z

    .line 1174
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1176
    const v1, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1185
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDNameId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_272

    .line 1186
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1190
    :goto_51
    const v0, 0x7f0b0012

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1191
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1194
    const v0, 0x7f0b0013

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : NAME "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1201
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDVendorId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    if-nez v0, :cond_2a0

    .line 1203
    const-string v0, "null"

    move-object v1, v0

    .line 1205
    :goto_ab
    const v0, 0x7f0b0014

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1206
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    const v0, 0x7f0b0015

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1209
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : VENDOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDSizeId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1217
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->converSize(I)Ljava/lang/String;

    move-result-object v0

    .line 1218
    if-nez v0, :cond_29d

    .line 1219
    const-string v0, "null"

    move-object v1, v0

    .line 1221
    :goto_109
    const v0, 0x7f0b0016

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1222
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1224
    const v0, 0x7f0b0017

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : SIZE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1231
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDVersionId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28e

    .line 1232
    const-string v0, "1.0"

    move-object v1, v0

    .line 1236
    :goto_163
    const v0, 0x7f0b0018

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1237
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1239
    const v0, 0x7f0b0019

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : VERSION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDTypeId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    if-nez v0, :cond_29a

    .line 1247
    const-string v0, "null"

    move-object v1, v0

    .line 1249
    :goto_1bd
    const v0, 0x7f0b001a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1250
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1252
    const v0, 0x7f0b001b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : TYPE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1259
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDDescriptionId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    if-nez v0, :cond_297

    .line 1261
    const-string v0, "null"

    move-object v1, v0

    .line 1263
    :goto_217
    const v0, 0x7f0b001c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1264
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1266
    const v0, 0x7f0b001d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    const-string v0, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewOMADDInfo : DESCRIPTION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const v0, 0x7f08003c

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080039

    new-instance v2, Lcom/android/providers/downloads/ui/SecDownloadList$14;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/providers/downloads/ui/SecDownloadList$14;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080038

    new-instance v2, Lcom/android/providers/downloads/ui/SecDownloadList$13;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/providers/downloads/ui/SecDownloadList$13;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_11

    .line 1188
    :cond_272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDNameId:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_51

    .line 1234
    :cond_28e
    iget v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList;->mDDVersionId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_163

    :cond_297
    move-object v1, v0

    goto/16 :goto_217

    :cond_29a
    move-object v1, v0

    goto/16 :goto_1bd

    :cond_29d
    move-object v1, v0

    goto/16 :goto_109

    :cond_2a0
    move-object v1, v0

    goto/16 :goto_ab
.end method
