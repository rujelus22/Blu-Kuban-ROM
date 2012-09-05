.class public abstract Lcom/google/android/feeds/core/app/BaseFeedAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseFeedAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/app/BaseFeedAdapter$2;
    }
.end annotation


# instance fields
.field private final mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mErrorView:Landroid/view/View;

.field private final mInnerAdapter:Landroid/widget/BaseAdapter;

.field private mLoadingView:Landroid/view/View;


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 6

    .prologue
    .line 95
    iget-object v3, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 96
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 97
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1b

    .line 98
    invoke-static {v1}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v2

    .line 99
    .local v2, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v3, Lcom/google/android/feeds/core/app/BaseFeedAdapter$2;->$SwitchMap$com$google$android$feeds$core$provider$FeedStatus:[I

    invoke-virtual {v2}, Lcom/google/android/feeds/core/provider/FeedStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_20

    .line 108
    .end local v0           #count:I
    .end local v2           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_1b
    :goto_1b
    return v0

    .line 103
    .restart local v0       #count:I
    .restart local v2       #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :pswitch_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 99
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected abstract getErrorView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    .line 130
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 164
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    .line 166
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x2

    goto :goto_e
.end method

.method protected abstract getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_f

    .line 188
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 216
    :goto_e
    return-object v4

    .line 191
    :cond_f
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 193
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v2

    .line 194
    .local v2, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v4, Lcom/google/android/feeds/core/app/BaseFeedAdapter$2;->$SwitchMap$com$google$android$feeds$core$provider$FeedStatus:[I

    invoke-virtual {v2}, Lcom/google/android/feeds/core/provider/FeedStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6c

    .line 218
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no view for position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :pswitch_3d
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mLoadingView:Landroid/view/View;

    if-nez v4, :cond_47

    .line 197
    invoke-virtual {p0, p3}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mLoadingView:Landroid/view/View;

    .line 199
    :cond_47
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mLoadingView:Landroid/view/View;

    goto :goto_e

    .line 201
    :pswitch_4a
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mErrorView:Landroid/view/View;

    if-nez v4, :cond_69

    .line 202
    invoke-virtual {p0, p3}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->getErrorView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mErrorView:Landroid/view/View;

    .line 203
    const v3, 0x1020019

    .line 204
    .local v3, viewId:I
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mErrorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_69

    .line 206
    new-instance v4, Lcom/google/android/feeds/core/app/BaseFeedAdapter$1;

    invoke-direct {v4, p0}, Lcom/google/android/feeds/core/app/BaseFeedAdapter$1;-><init>(Lcom/google/android/feeds/core/app/BaseFeedAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .end local v0           #button:Landroid/widget/Button;
    .end local v3           #viewId:I
    :cond_69
    iget-object v4, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mErrorView:Landroid/view/View;

    goto :goto_e

    .line 194
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 268
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    .line 270
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method protected onRetryClick()V
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 230
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 231
    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->retryAsync(Landroid/database/Cursor;)V

    .line 233
    :cond_9
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 139
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->mInnerAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 146
    return-void
.end method
