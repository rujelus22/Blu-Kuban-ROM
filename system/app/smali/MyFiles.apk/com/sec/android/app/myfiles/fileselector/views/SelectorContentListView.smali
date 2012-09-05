.class public Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;
.super Landroid/widget/ListView;
.source "SelectorContentListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;


# instance fields
.field mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

.field mContext:Landroid/content/Context;

.field private mDpadEnter:Z

.field mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 3
    .parameter "tag"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    return-object v0
.end method

.method public getViewAdapter()Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@@EMPTY_ITEM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 158
    :goto_10
    return-void

    :cond_11
    move-object v0, p2

    .line 128
    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    .line 129
    .local v0, contentItem:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    iget-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    if-ne v2, v4, :cond_4d

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 133
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->execute()V

    .line 135
    :cond_2a
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->getCheckVisibility()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 136
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setCheckEnabled(Z)V

    .line 138
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 142
    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setChecked(Z)V

    .line 151
    :goto_3c
    iput-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    goto :goto_10

    .line 144
    :cond_3f
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setChecked(Z)V

    goto :goto_3c

    .line 147
    :cond_43
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setCheckVisibility(I)V

    .line 148
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setCheckEnabled(Z)V

    .line 149
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setChecked(Z)V

    goto :goto_3c

    .line 154
    .end local v1           #file:Ljava/io/File;
    :cond_4d
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->execute()V

    goto :goto_10
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 217
    const/16 v0, 0x42

    if-ne p1, v0, :cond_7

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mDpadEnter:Z

    .line 221
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->getViewAdapter()Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method public rotate(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 211
    return-void
.end method

.method public setFirstSelection()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 5
    .parameter "tag"
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    .line 111
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v0, :cond_9

    .line 112
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 114
    :cond_9
    return-void
.end method

.method public setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V
    .registers 2
    .parameter "mxview"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 120
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "tag"
    .parameter "b"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    .line 198
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v0, :cond_b

    .line 199
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 201
    :cond_b
    return-void
.end method

.method public setViewAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    return-void
.end method
