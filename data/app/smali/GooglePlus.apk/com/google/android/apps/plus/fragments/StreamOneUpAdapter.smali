.class public Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "StreamOneUpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$LeftoverQuery;,
        Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$CommentQuery;,
        Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$CommentCountQuery;,
        Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$ActivityQuery;
    }
.end annotation


# instance fields
.field private mActivityPosition:I

.field private mContainerHeight:I

.field private mHeights:Landroid/util/SparseIntArray;

.field private mLeftoverPosition:I

.field private final mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

.field private final mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/StreamOneUpListener;Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "oneUpListener"
    .parameter "onMeasuredListener"

    .prologue
    const/4 v0, -0x1

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 145
    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    .line 147
    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mLeftoverPosition:I

    .line 157
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    .line 158
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    .line 159
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 195
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 196
    .local v3, type:I
    packed-switch v3, :pswitch_data_60

    .line 233
    :goto_8
    return-void

    :pswitch_9
    move-object v4, p1

    .line 198
    check-cast v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    .line 199
    .local v4, v:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->setOneUpClickListener(Lcom/google/android/apps/plus/views/StreamOneUpListener;)V

    .line 200
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V

    .line 201
    invoke-virtual {v4, p3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->bind(Landroid/database/Cursor;)V

    goto :goto_8

    .end local v4           #v:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;
    :pswitch_1a
    move-object v4, p1

    .line 206
    check-cast v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    .line 207
    .local v4, v:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->setOneUpClickListener(Lcom/google/android/apps/plus/views/StreamOneUpListener;)V

    .line 208
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V

    .line 209
    invoke-virtual {v4, p3}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->bind(Landroid/database/Cursor;)V

    goto :goto_8

    .end local v4           #v:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;
    :pswitch_2b
    move-object v4, p1

    .line 214
    check-cast v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;

    .line 215
    .local v4, v:Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V

    .line 216
    invoke-virtual {v4, p3}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->bind(Landroid/database/Cursor;)V

    goto :goto_8

    .end local v4           #v:Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;
    :pswitch_37
    move-object v4, p1

    .line 221
    check-cast v4, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;

    .line 222
    .local v4, v:Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;
    iget v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mContainerHeight:I

    .line 223
    .local v2, leftover:I
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_5c

    .line 224
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_48
    if-lez v2, :cond_5c

    if-ltz v0, :cond_5c

    .line 225
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 226
    .local v1, key:I
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    .line 229
    .end local v0           #i:I
    .end local v1           #key:I
    :cond_5c
    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->bind(I)V

    goto :goto_8

    .line 196
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2b
        :pswitch_1a
        :pswitch_37
    .end packed-switch
.end method

.method public getAclText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 294
    iget v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    if-gez v2, :cond_6

    .line 303
    :cond_5
    :goto_5
    return-object v1

    .line 298
    :cond_6
    iget v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 299
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 303
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public getActivityAuthorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 310
    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    if-ltz v1, :cond_c

    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getCount()I

    move-result v2

    if-le v1, v2, :cond_e

    .line 311
    :cond_c
    const/4 v1, 0x0

    .line 315
    :goto_d
    return-object v1

    .line 314
    :cond_e
    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 315
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x4

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 241
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 265
    const/4 v1, 0x0

    .line 269
    .local v1, v:Landroid/view/View;
    :goto_12
    return-object v1

    .line 243
    .end local v1           #v:Landroid/view/View;
    :pswitch_13
    const v2, 0x7f0300da

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    .restart local v1       #v:Landroid/view/View;
    goto :goto_12

    .line 248
    .end local v1           #v:Landroid/view/View;
    :pswitch_1b
    const v2, 0x7f0300db

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 251
    .restart local v1       #v:Landroid/view/View;
    goto :goto_12

    .line 254
    .end local v1           #v:Landroid/view/View;
    :pswitch_23
    const v2, 0x7f0300dc

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 256
    .restart local v1       #v:Landroid/view/View;
    goto :goto_12

    .line 259
    .end local v1           #v:Landroid/view/View;
    :pswitch_2b
    const v2, 0x7f0300de

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 260
    .restart local v1       #v:Landroid/view/View;
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mLeftoverPosition:I

    goto :goto_12

    .line 241
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method public setContainerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 276
    iput p1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mContainerHeight:I

    .line 277
    return-void
.end method

.method public setItemHeight(II)V
    .registers 4
    .parameter "position"
    .parameter "height"

    .prologue
    .line 283
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mLeftoverPosition:I

    if-ne p1, v0, :cond_b

    .line 287
    :cond_a
    :goto_a
    return-void

    .line 286
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_a
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter "newCursor"

    .prologue
    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    .line 174
    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mLeftoverPosition:I

    .line 175
    if-eqz p1, :cond_34

    .line 176
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 179
    :cond_18
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2d

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mActivityPosition:I

    .line 184
    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 183
    :cond_2d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_25

    .line 187
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->mHeights:Landroid/util/SparseIntArray;

    goto :goto_28
.end method
