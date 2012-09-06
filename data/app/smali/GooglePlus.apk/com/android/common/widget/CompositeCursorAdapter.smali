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

.field protected final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    .line 61
    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 62
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 87
    iput-object p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 89
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .registers 7
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 105
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_17

    .line 106
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 107
    .local v1, newCapacity:I
    new-array v0, v1, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 108
    .local v0, newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 111
    .end local v0           #newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v1           #newCapacity:I
    :cond_17
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    aput-object p1, v2, v3

    .line 112
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 113
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public addPartition(ZZ)V
    .registers 4
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 101
    new-instance v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    invoke-direct {v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 102
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    .line 508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_12

    .line 509
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v1, :cond_f

    .line 510
    const/4 v1, 0x0

    .line 513
    :goto_e
    return v1

    .line 508
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_12
    const/4 v1, 0x1

    goto :goto_e
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .registers 4
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 413
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .registers 6
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 238
    .local v0, prevCursor:Landroid/database/Cursor;
    if-eq v0, p2, :cond_33

    .line 239
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->isCursorClosingEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_19
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 243
    if-eqz p2, :cond_2d

    .line 244
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 246
    :cond_2d
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 247
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_33
    return-void
.end method

.method public checkPartitions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "tag"
    .parameter "stage"

    .prologue
    .line 70
    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_5c

    .line 71
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v3, v1

    .line 72
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    if-eqz v2, :cond_33

    iget-object v0, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 74
    .local v0, cursor:Landroid/database/Cursor;
    :goto_e
    if-nez v0, :cond_35

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partcheck s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " emptypart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 72
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_33
    const/4 v0, 0x0

    goto :goto_e

    .line 76
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_35
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partcheck s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stalepart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 80
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5c
    return-void
.end method

.method public clearPartitions()V
    .registers 4

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_f

    .line 134
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 137
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v2, :cond_20

    .line 145
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 146
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 144
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_20
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    .line 152
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 153
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method protected ensureCacheValid()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v4, :cond_6

    .line 200
    :goto_5
    return-void

    .line 186
    :cond_6
    iput v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 187
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v4, :cond_3d

    .line 188
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 189
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 190
    .local v0, count:I
    :goto_19
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_2d

    .line 191
    if-nez v0, :cond_2b

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2d

    .line 192
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_2d
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 196
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v0           #count:I
    :cond_3b
    move v0, v3

    .line 189
    goto :goto_19

    .line 199
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_5
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 215
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCount(I)I
    .registers 3
    .parameter "partition"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 223
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_c
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .registers 3
    .parameter "partition"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 394
    if-eqz p3, :cond_7

    move-object v0, p3

    .line 397
    .local v0, view:Landroid/view/View;
    :goto_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 398
    return-object v0

    .line 394
    .end local v0           #view:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 8
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v5, :cond_25

    .line 451
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v5

    .line 452
    .local v1, end:I
    if-lt p1, v4, :cond_30

    if-ge p1, v1, :cond_30

    .line 453
    sub-int v3, p1, v4

    .line 454
    .local v3, offset:I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_22

    .line 455
    add-int/lit8 v3, v3, -0x1

    .line 457
    :cond_22
    const/4 v5, -0x1

    if-ne v3, v5, :cond_26

    .line 467
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_25
    :goto_25
    return-object v0

    .line 460
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_26
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 461
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_25

    .line 464
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_30
    move v4, v1

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public getItemId(I)J
    .registers 11
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v5, 0x0

    .line 475
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v7, :cond_26

    .line 478
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v7

    .line 479
    .local v1, end:I
    if-lt p1, v4, :cond_4e

    if-ge p1, v1, :cond_4e

    .line 480
    sub-int v3, p1, v4

    .line 481
    .local v3, offset:I
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v7, :cond_24

    .line 482
    add-int/lit8 v3, v3, -0x1

    .line 484
    :cond_24
    if-ne v3, v8, :cond_27

    .line 500
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_26
    :goto_26
    return-wide v5

    .line 487
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_27
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-eq v7, v8, :cond_26

    .line 491
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-object v0, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 492
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 495
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_26

    .line 497
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_4e
    move v4, v1

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public getItemViewType(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2c

    .line 342
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 343
    .local v0, end:I
    if-lt p1, v3, :cond_28

    if-ge p1, v0, :cond_28

    .line 344
    sub-int v2, p1, v3

    .line 345
    .local v2, offset:I
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_23

    if-nez v2, :cond_23

    .line 346
    const/4 v4, -0x1

    .line 348
    :goto_22
    return v4

    :cond_23
    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v4

    goto :goto_22

    .line 350
    .end local v2           #offset:I
    :cond_28
    move v3, v0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 353
    .end local v0           #end:I
    :cond_2c
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .registers 4
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_26

    .line 290
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 291
    .local v0, end:I
    if-lt p1, v3, :cond_22

    if-ge p1, v0, :cond_22

    .line 292
    sub-int v2, p1, v3

    .line 293
    .local v2, offset:I
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_21

    .line 294
    add-int/lit8 v2, v2, -0x1

    .line 300
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_21
    :goto_21
    return v2

    .line 298
    .restart local v0       #end:I
    :cond_22
    move v3, v0

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 300
    .end local v0           #end:I
    :cond_26
    const/4 v2, -0x1

    goto :goto_21
.end method

.method public getPartitionForPosition(I)I
    .registers 6
    .parameter "position"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v3, :cond_1a

    .line 273
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v2, v3

    .line 274
    .local v0, end:I
    if-lt p1, v2, :cond_16

    if-ge p1, v0, :cond_16

    .line 279
    .end local v0           #end:I
    .end local v1           #i:I
    :goto_15
    return v1

    .line 277
    .restart local v0       #end:I
    .restart local v1       #i:I
    :cond_16
    move v2, v0

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 279
    .end local v0           #end:I
    :cond_1a
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public getPositionForPartition(I)I
    .registers 5
    .parameter "partition"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p1, :cond_11

    .line 310
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int/2addr v1, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 312
    :cond_11
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 421
    if-eqz p4, :cond_7

    .line 422
    move-object v6, p4

    .line 426
    .local v6, view:Landroid/view/View;
    :goto_3
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 427
    return-object v6

    .line 424
    .end local v6           #view:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 359
    const/4 v7, 0x0

    .line 360
    .local v7, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v0, :cond_8b

    .line 361
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v7, v0

    .line 362
    .local v6, end:I
    if-lt p1, v7, :cond_86

    if-ge p1, v6, :cond_86

    .line 363
    sub-int v3, p1, v7

    .line 364
    .local v3, offset:I
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_21

    .line 365
    add-int/lit8 v3, v3, -0x1

    .line 368
    :cond_21
    const/4 v0, -0x1

    if-ne v3, v0, :cond_53

    .line 369
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 377
    .local v8, view:Landroid/view/View;
    :goto_2e
    if-nez v8, :cond_91

    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    .end local v8           #view:Landroid/view/View;
    :cond_53
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_78

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_78
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8       #view:Landroid/view/View;
    goto :goto_2e

    .line 383
    .end local v3           #offset:I
    .end local v8           #view:Landroid/view/View;
    :cond_86
    move v7, v6

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 386
    .end local v6           #end:I
    :cond_8b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 381
    .restart local v3       #offset:I
    .restart local v6       #end:I
    .restart local v8       #view:Landroid/view/View;
    :cond_91
    return-object v8
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected invalidate()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 175
    return-void
.end method

.method public isCursorClosingEnabled()Z
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 8
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 522
    const/4 v3, 0x0

    .line 523
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v5, :cond_22

    .line 524
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v5

    .line 525
    .local v0, end:I
    if-lt p1, v3, :cond_28

    if-ge p1, v0, :cond_28

    .line 526
    sub-int v2, p1, v3

    .line 527
    .local v2, offset:I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_23

    if-nez v2, :cond_23

    .line 536
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_22
    :goto_22
    return v4

    .line 530
    .restart local v0       #end:I
    .restart local v2       #offset:I
    :cond_23
    invoke-virtual {p0, v1, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v4

    goto :goto_22

    .line 533
    .end local v2           #offset:I
    :cond_28
    move v3, v0

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method protected isEnabled(II)Z
    .registers 4
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .registers 4
    .parameter "partition"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 263
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_b

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 562
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 566
    :goto_a
    return-void

    .line 564
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_a
.end method
