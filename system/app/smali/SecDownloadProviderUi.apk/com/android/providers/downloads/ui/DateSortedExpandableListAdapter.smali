.class public Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.super Ljava/lang/Object;
.source "DateSortedExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$1;,
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "dateIndex"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    .line 90
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 91
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 92
    new-instance v0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;-><init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    new-instance v0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$1;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    iput p3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 95
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->buildMap()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->buildMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private buildMap()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 104
    new-array v0, v7, [I

    .line 106
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    if-ge v5, v7, :cond_c

    .line 107
    aput v6, v0, v5

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 109
    :cond_c
    iput v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 110
    const/4 v3, -0x1

    .line 111
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4d

    .line 112
    :goto_1f
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 113
    iget v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 114
    .local v1, date:J
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 115
    .local v4, index:I
    if-le v4, v3, :cond_51

    .line 116
    iget v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 117
    const/4 v6, 0x4

    if-ne v4, v6, :cond_50

    .line 120
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 130
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_4d
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 131
    return-void

    .line 124
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_50
    move v3, v4

    .line 126
    :cond_51
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 127
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1f
.end method

.method private groupPositionToBin(I)I
    .registers 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 213
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_d

    .line 214
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 216
    :cond_d
    iget v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_15

    iget v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_17

    :cond_15
    move v0, p1

    .line 232
    :cond_16
    return v0

    .line 225
    :cond_17
    const/4 v0, -0x1

    .line 226
    .local v0, arrayPosition:I
    :cond_18
    :goto_18
    const/4 v1, -0x1

    if-le p1, v1, :cond_16

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_18

    .line 229
    add-int/lit8 p1, p1, -0x1

    goto :goto_18
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    iget v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v0

    .line 328
    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .registers 5
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 350
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .registers 3
    .parameter "groupId"

    .prologue
    .line 354
    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 321
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 280
    if-eqz p3, :cond_6

    instance-of v3, p3, Landroid/widget/TextView;

    if-nez v3, :cond_24

    .line 281
    :cond_6
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 282
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v1, item:Landroid/widget/TextView;
    :goto_16
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-object v1

    .end local v1           #item:Landroid/widget/TextView;
    .end local v2           #label:Ljava/lang/String;
    :cond_24
    move-object v1, p3

    .line 284
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #item:Landroid/widget/TextView;
    goto :goto_16
.end method

.method getLong(I)J
    .registers 4
    .parameter "cursorIndex"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method moveCursorToChildPosition(II)Z
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 267
    :goto_9
    return v2

    .line 262
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 263
    move v1, p2

    .line 264
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, p1, :cond_1a

    .line 265
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 267
    :cond_1a
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_9
.end method

.method public onGroupCollapsed(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 347
    return-void
.end method

.method public onGroupExpanded(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 344
    return-void
.end method

.method refreshData()V
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 275
    :goto_8
    return-void

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_8
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method
