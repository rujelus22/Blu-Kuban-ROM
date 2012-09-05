.class Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkGridReorder.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkGridReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/browser/BookmarkListItem;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwDndController;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutID:I

.field final synthetic this$0:Lcom/android/browser/BookmarkGridReorder;


# direct methods
.method public constructor <init>(Lcom/android/browser/BookmarkGridReorder;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/BookmarkListItem;>;"
    iput-object p1, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->this$0:Lcom/android/browser/BookmarkGridReorder;

    .line 253
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 254
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 255
    iput p3, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->mLayoutID:I

    .line 256
    iput-object p2, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->mContext:Landroid/content/Context;

    .line 257
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .registers 3
    .parameter "startPos"

    .prologue
    .line 329
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .registers 4
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 335
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .registers 5
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 340
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarkListItem;

    .line 346
    .local v0, draggedObj:Lcom/android/browser/BookmarkListItem;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->setNotifyOnChange(Z)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0, v0, p2}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    .line 357
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 358
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>;"
    const/4 v6, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, holder:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    if-nez p2, :cond_42

    .line 265
    iget-object v3, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->mLayoutID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 266
    new-instance v1, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-direct {v1, p0, p2}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;-><init>(Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;Landroid/view/View;)V

    .line 267
    .restart local v1       #holder:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    :goto_15
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BookmarkListItem;

    .line 275
    .local v2, item:Lcom/android/browser/BookmarkListItem;
    invoke-virtual {v1}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/browser/BookmarkListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v1}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    invoke-virtual {v2}, Lcom/android/browser/BookmarkListItem;->getThumbnail()[B

    move-result-object v3

    if-eqz v3, :cond_49

    .line 281
    invoke-virtual {v2}, Lcom/android/browser/BookmarkListItem;->getThumbnail()[B

    move-result-object v0

    .line 282
    .local v0, data:[B
    iget-object v3, v1, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    .end local v0           #data:[B
    :goto_41
    return-object p2

    .line 271
    .end local v2           #item:Lcom/android/browser/BookmarkListItem;
    :cond_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    check-cast v1, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    goto :goto_15

    .line 286
    .restart local v2       #item:Lcom/android/browser/BookmarkListItem;
    :cond_49
    invoke-virtual {v2}, Lcom/android/browser/BookmarkListItem;->getIsFolder()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_5c

    .line 287
    iget-object v3, v1, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41

    .line 289
    :cond_5c
    iget-object v3, v1, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020016

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41
.end method
