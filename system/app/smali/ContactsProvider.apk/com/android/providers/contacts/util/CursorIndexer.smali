.class public Lcom/android/providers/contacts/util/CursorIndexer;
.super Landroid/database/CursorWrapper;
.source "CursorIndexer.java"


# instance fields
.field private mVirtureCurrentPos:I

.field private mVirturePosArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    return v0
.end method

.method public isAfterLast()Z
    .registers 3

    .prologue
    .line 149
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isBeforeFirst()Z
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_8

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLast()Z
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public move(I)Z
    .registers 4
    .parameter "offset"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 88
    const/4 v0, 0x0

    .line 92
    :goto_c
    return v0

    .line 90
    :cond_d
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 92
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_c
.end method

.method public moveToFirst()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 101
    :goto_9
    return v0

    .line 100
    :cond_a
    iput v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_9
.end method

.method public moveToLast()Z
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 107
    const/4 v0, 0x0

    .line 110
    :goto_9
    return v0

    .line 109
    :cond_a
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_9
.end method

.method public moveToNext()Z
    .registers 3

    .prologue
    .line 115
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_d
    return v0

    .line 118
    :cond_e
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 119
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_d
.end method

.method public moveToPosition(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_9
    return v0

    .line 127
    :cond_a
    iput p1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 128
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_9
.end method

.method public moveToPrevious()Z
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_5
    return v0

    .line 136
    :cond_6
    iget v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    .line 137
    iget-object v0, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirturePosArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/util/CursorIndexer;->mVirtureCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_5
.end method
