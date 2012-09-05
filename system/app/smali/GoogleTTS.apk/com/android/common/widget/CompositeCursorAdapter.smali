.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    }
.end annotation


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

.field private mSize:I


# virtual methods
.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .registers 7
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_17

    .line 89
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 90
    .local v1, newCapacity:I
    new-array v0, v1, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 91
    .local v0, newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 94
    .end local v0           #newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v1           #newCapacity:I
    :cond_17
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    aput-object p1, v2, v3

    .line 95
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .registers 6
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 212
    .local v0, prevCursor:Landroid/database/Cursor;
    if-eq v0, p2, :cond_2d

    .line 213
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_13
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 217
    if-eqz p2, :cond_27

    .line 218
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 220
    :cond_27
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 221
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_2d
    return-void
.end method

.method protected ensureCacheValid()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v4, :cond_6

    .line 183
    :goto_5
    return-void

    .line 169
    :cond_6
    iput v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v4, :cond_3d

    .line 171
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 172
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 173
    .local v0, count:I
    :goto_19
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_2d

    .line 174
    if-nez v0, :cond_2b

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2d

    .line 175
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_2d
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 179
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v0           #count:I
    :cond_3b
    move v0, v3

    .line 172
    goto :goto_19

    .line 182
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_5
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 197
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .registers 3
    .parameter "partition"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .registers 3
    .parameter "partitionIndex"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-lt p1, v0, :cond_a

    .line 151
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    return v0
.end method

.method protected invalidate()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 158
    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_b

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 526
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 530
    :goto_a
    return-void

    .line 528
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_a
.end method

.method public setNotificationsEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 517
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_b

    .line 518
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_b
    return-void
.end method
