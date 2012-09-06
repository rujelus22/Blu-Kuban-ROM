.class public Lcom/android/browser/DateSortedExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DateSortedExpandableListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mDataValid:Z

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "dateIndex"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 49
    new-instance v0, Lcom/android/browser/DateSortedExpandableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/browser/DateSortedExpandableListAdapter$1;-><init>(Lcom/android/browser/DateSortedExpandableListAdapter;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 64
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 66
    iput p2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 69
    return-void
.end method

.method private buildMap()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 77
    new-array v0, v7, [I

    .line 79
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    if-ge v5, v7, :cond_c

    .line 80
    aput v6, v0, v5

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 82
    :cond_c
    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 83
    const/4 v3, -0x1

    .line 84
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4d

    .line 85
    :goto_1f
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 86
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 87
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 88
    .local v4, index:I
    if-le v4, v3, :cond_51

    .line 89
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 90
    const/4 v6, 0x4

    if-ne v4, v6, :cond_50

    .line 93
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 103
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_4d
    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 104
    return-void

    .line 97
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_50
    move v3, v4

    .line 99
    :cond_51
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 100
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1f
.end method

.method private groupPositionToBin(I)I
    .registers 6
    .parameter "groupPosition"

    .prologue
    const/4 v3, 0x5

    const/4 v1, -0x1

    .line 195
    iget-boolean v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v2, :cond_8

    move v0, v1

    .line 215
    :cond_7
    :goto_7
    return v0

    .line 196
    :cond_8
    if-ltz p1, :cond_c

    if-lt p1, v3, :cond_14

    .line 197
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 199
    :cond_14
    iget v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v3, v2, :cond_1c

    iget v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v2, :cond_1e

    :cond_1c
    move v0, p1

    .line 206
    goto :goto_7

    .line 208
    :cond_1e
    const/4 v0, -0x1

    .line 209
    .local v0, arrayPosition:I
    :cond_1f
    :goto_1f
    if-le p1, v1, :cond_7

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1f

    .line 212
    add-int/lit8 p1, p1, -0x1

    goto :goto_1f
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_5

    .line 277
    :goto_4
    return-void

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    .line 260
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_15
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 264
    if-eqz p1, :cond_30

    .line 265
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 268
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 272
    :cond_30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->notifyDataSetInvalidated()V

    goto :goto_4
.end method

.method getBlob(I)[B
    .registers 3
    .parameter "cursorIndex"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 116
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_5
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const-wide/16 v0, 0x0

    .line 342
    iget-boolean v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v2, :cond_7

    .line 346
    :cond_6
    :goto_6
    return-wide v0

    .line 343
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 321
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_5
.end method

.method public getCombinedChildId(JJ)J
    .registers 6
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const-wide/16 p3, 0x0

    .line 365
    .end local p3
    :cond_6
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .registers 4
    .parameter "groupId"

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const-wide/16 p1, 0x0

    .line 371
    .end local p1
    :cond_6
    return-wide p1
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 315
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    goto :goto_5
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    .line 337
    :goto_6
    return-wide v0

    :cond_7
    int-to-long v0, p1

    goto :goto_6
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    iget-boolean v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Data is not valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_c
    if-eqz p3, :cond_12

    instance-of v3, p3, Landroid/widget/TextView;

    if-nez v3, :cond_30

    .line 285
    :cond_12
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 286
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04001a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v1, item:Landroid/widget/TextView;
    :goto_22
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-object v1

    .end local v1           #item:Landroid/widget/TextView;
    .end local v2           #label:Ljava/lang/String;
    :cond_30
    move-object v1, p3

    .line 288
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #item:Landroid/widget/TextView;
    goto :goto_22
.end method

.method getInt(I)I
    .registers 3
    .parameter "cursorIndex"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 133
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_5
.end method

.method getLong(I)J
    .registers 4
    .parameter "cursorIndex"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    .line 142
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method getString(I)Ljava/lang/String;
    .registers 3
    .parameter "cursorIndex"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 155
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method groupFromChildId(J)I
    .registers 9
    .parameter "childId"

    .prologue
    .line 163
    iget-boolean v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v3, :cond_6

    const/4 v0, -0x1

    .line 184
    :cond_5
    :goto_5
    return v0

    .line 164
    :cond_6
    const/4 v1, -0x1

    .line 165
    .local v1, group:I
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_c
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_44

    .line 167
    iget v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v3}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3e

    .line 168
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    iget v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v4}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v0

    .line 171
    .local v0, bin:I
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v3, v4, :cond_5

    .line 175
    const/4 v1, 0x0

    .line 176
    const/4 v2, 0x0

    .local v2, i:I
    :goto_31
    if-ge v2, v0, :cond_44

    .line 177
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v3, v3, v2

    if-eqz v3, :cond_3b

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 176
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 166
    .end local v0           #bin:I
    .end local v2           #i:I
    :cond_3e
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_c

    :cond_44
    move v0, v1

    .line 184
    goto :goto_5
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method moveCursorToChildPosition(II)Z
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 244
    iget-boolean v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 245
    :cond_c
    const/4 v2, 0x0

    .line 252
    :goto_d
    return v2

    .line 247
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 248
    move v1, p2

    .line 249
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, p1, :cond_1e

    .line 250
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 252
    :cond_1e
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_d
.end method

.method moveCursorToPackedChildPosition(J)Z
    .registers 7
    .parameter "packedPosition"

    .prologue
    .line 224
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 226
    const/4 v2, 0x0

    .line 232
    :goto_8
    return v2

    .line 228
    :cond_9
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 230
    .local v1, groupPosition:I
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 232
    .local v0, childPosition:I
    invoke-virtual {p0, v1, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v2

    goto :goto_8
.end method

.method public onGroupCollapsed(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 360
    return-void
.end method

.method public onGroupExpanded(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 356
    return-void
.end method
