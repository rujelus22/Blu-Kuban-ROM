.class public abstract Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;
.super Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;
.source "EsCursorPagerAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mItemPosition:Landroid/util/SparseIntArray;

.field private mObjectRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "fm"
    .parameter "c"

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "c"

    .prologue
    .line 219
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    .line 220
    .local v0, cursorPresent:Z
    :goto_3
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 221
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    .line 222
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mContext:Landroid/content/Context;

    .line 223
    if-eqz v0, :cond_16

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_11
    iput v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    .line 224
    return-void

    .line 219
    .end local v0           #cursorPresent:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_3

    .line 223
    .restart local v0       #cursorPresent:Z
    :cond_16
    const/4 v1, -0x1

    goto :goto_11
.end method

.method private moveCursorTo(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 212
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private setItemPosition()V
    .registers 6

    .prologue
    .line 231
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 232
    :cond_10
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    .line 246
    :goto_13
    return-void

    .line 236
    :cond_14
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 238
    .local v0, itemPosition:Landroid/util/SparseIntArray;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    :goto_25
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 240
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 241
    .local v2, rowId:I
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 243
    .local v1, position:I
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_25

    .line 245
    .end local v1           #position:I
    .end local v2           #rowId:I
    :cond_3f
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    goto :goto_13
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 70
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "position"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getItem(Landroid/content/Context;Landroid/database/Cursor;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 62
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public abstract getItem(Landroid/content/Context;Landroid/database/Cursor;)Landroid/support/v4/app/Fragment;
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 6
    .parameter "object"

    .prologue
    const/4 v0, -0x2

    .line 104
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    .local v1, rowId:Ljava/lang/Integer;
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    if-nez v2, :cond_10

    .line 110
    :cond_f
    :goto_f
    return v0

    .line 109
    :cond_10
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 110
    .local v0, position:I
    goto :goto_f
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 7
    .parameter "container"
    .parameter "position"

    .prologue
    .line 76
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    if-nez v2, :cond_c

    .line 77
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_c
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    .local v1, rowId:Ljava/lang/Integer;
    :goto_1e
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_29

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_29
    return-object v0

    .line 84
    .end local v0           #obj:Ljava/lang/Object;
    .end local v1           #rowId:Ljava/lang/Integer;
    :cond_2a
    const/4 v1, 0x0

    .restart local v1       #rowId:Ljava/lang/Integer;
    goto :goto_1e
.end method

.method public isDataValid()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    return v0
.end method

.method protected makeFragmentName(II)Ljava/lang/String;
    .registers 6
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 196
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:espager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_2b
    return-object v0

    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 7
    .parameter "newCursor"

    .prologue
    const/4 v2, -0x1

    .line 158
    const-string v1, "EsCursorPagerAdapter"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 159
    const-string v3, "EsCursorPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swapCursor old="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3a

    move v1, v2

    :goto_1c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; new="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_41

    move v1, v2

    :goto_29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_34
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_46

    .line 164
    const/4 v0, 0x0

    .line 178
    :goto_39
    return-object v0

    .line 159
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1c

    :cond_41
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_29

    .line 166
    :cond_46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 167
    .local v0, oldCursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 168
    if-eqz p1, :cond_5e

    .line 169
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    .line 176
    :goto_57
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->setItemPosition()V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->notifyDataSetChanged()V

    goto :goto_39

    .line 172
    :cond_5e
    iput v2, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mRowIDColumn:I

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->mDataValid:Z

    goto :goto_57
.end method
