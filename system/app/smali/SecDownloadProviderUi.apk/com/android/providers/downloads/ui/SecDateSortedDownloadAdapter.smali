.class public Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;
.super Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.source "SecDateSortedDownloadAdapter.java"


# instance fields
.field private final mDelegate:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

.field private final mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V
    .registers 4
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    .line 37
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 39
    new-instance v0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    .line 40
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    .line 42
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 48
    if-eqz p4, :cond_6

    instance-of v1, p4, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_c

    .line 49
    :cond_6
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->newView()Landroid/view/View;

    move-result-object p4

    .line 53
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->moveCursorToChildPosition(II)Z

    move-result v1

    if-nez v1, :cond_13

    .line 60
    :goto_12
    return-object p4

    .line 57
    :cond_13
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 59
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/SecDownloadAdapter;

    invoke-virtual {v1, p4, v0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->bindView(Landroid/view/View;I)V

    goto :goto_12
.end method
