.class public Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;
.super Landroid/widget/GridView;
.source "SelectorContentGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;


# instance fields
.field mContext:Landroid/content/Context;

.field mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->rotate(I)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->rotate(I)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->rotate(I)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 3
    .parameter "tag"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    return-object v0
.end method

.method public getViewAdapter()Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 149
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@@EMPTY_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 154
    .end local p2
    :goto_e
    return-void

    .line 152
    .restart local p2
    :cond_f
    check-cast p2, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->execute()V

    goto :goto_e
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->getViewAdapter()Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public rotate(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 173
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 175
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setNumColumns(I)V

    .line 181
    :goto_7
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setSelection(I)V

    .line 183
    return-void

    .line 179
    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setNumColumns(I)V

    goto :goto_7
.end method

.method public setFirstSelection()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 5
    .parameter "tag"
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    .line 114
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v0, :cond_9

    .line 115
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 117
    :cond_9
    return-void
.end method

.method public setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V
    .registers 2
    .parameter "mxview"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 123
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "tag"
    .parameter "b"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->getItem(Ljava/lang/String;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    .line 160
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v0, :cond_b

    .line 161
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 163
    :cond_b
    return-void
.end method

.method public setViewAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    return-void
.end method
