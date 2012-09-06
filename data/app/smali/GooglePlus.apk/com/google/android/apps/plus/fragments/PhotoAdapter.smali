.class public Lcom/google/android/apps/plus/fragments/PhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    .line 41
    if-eqz p2, :cond_1c

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    .line 46
    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mThumbnailSize:I

    .line 47
    return-void

    .line 44
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    goto :goto_e
.end method


# virtual methods
.method public add(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "mediaRef"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x3

    .line 99
    if-nez p2, :cond_4e

    .line 100
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 102
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030046

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;

    .line 103
    .local v1, imageView:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setTag(Ljava/lang/Object;)V

    .line 107
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_20
    iget v6, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mThumbnailSize:I

    iget v7, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mThumbnailSize:I

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setThumbnailSize(II)V

    .line 109
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 112
    .local v3, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 113
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->getMaxThumbnailDimension(Landroid/content/Context;I)I

    move-result v4

    .line 114
    .local v4, size:I
    new-instance v0, Lcom/google/android/apps/plus/content/LocalImageRequest;

    invoke-direct {v0, v3, v4, v4}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 121
    .end local v4           #size:I
    .local v0, imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :goto_3e
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 122
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v6, v7, :cond_5e

    const/4 v6, 0x1

    :goto_4a
    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setIsVideo(Z)V

    .line 124
    return-object v1

    .end local v0           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v1           #imageView:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v3           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_4e
    move-object v1, p2

    .line 105
    check-cast v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;

    .restart local v1       #imageView:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    goto :goto_20

    .line 117
    .restart local v3       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_52
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v5

    .line 119
    .local v5, thumbnailSize:I
    new-instance v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;

    invoke-direct {v0, v3, v5, v5}, Lcom/google/android/apps/plus/content/RemoteImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .restart local v0       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto :goto_3e

    .line 122
    .end local v5           #thumbnailSize:I
    :cond_5e
    const/4 v6, 0x0

    goto :goto_4a
.end method

.method public remove(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "mediaRef"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
