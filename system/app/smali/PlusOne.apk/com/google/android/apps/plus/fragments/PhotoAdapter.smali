.class public Lcom/google/android/apps/plus/fragments/PhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoAdapter.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContext:Landroid/content/Context;

.field private final mImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "viewGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImageCache:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 50
    if-eqz p4, :cond_1a

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    .line 55
    :goto_19
    return-void

    .line 53
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    goto :goto_19
.end method


# virtual methods
.method public add(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "mediaRef"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    if-nez p2, :cond_41

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 111
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 112
    .local v7, imageView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    .end local v8           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_1f
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 118
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImageCache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 120
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_3b

    .line 121
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/service/EsService;->getLocalImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 133
    :cond_3b
    :goto_3b
    if-eqz v6, :cond_40

    .line 134
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :cond_40
    return-object v7

    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #imageView:Landroid/widget/ImageView;
    :cond_41
    move-object v7, p2

    .line 114
    check-cast v7, Landroid/widget/ImageView;

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_1f

    .line 126
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v3

    .line 128
    .local v3, thumbnailSize:I
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v5, 0x1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3b
.end method

.method public remove(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "mediaRef"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImageCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public setBitmap(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V
    .registers 5
    .parameter "mediaRef"
    .parameter "cropType"
    .parameter "bitmap"

    .prologue
    .line 141
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    .line 145
    :goto_3
    return-void

    .line 144
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->setBitmap(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z

    goto :goto_3
.end method

.method public setBitmap(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z
    .registers 9
    .parameter "mediaRef"
    .parameter "bitmap"

    .prologue
    .line 148
    if-nez p2, :cond_4

    .line 149
    const/4 v0, 0x0

    .line 166
    :cond_3
    :goto_3
    return v0

    .line 152
    :cond_4
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mImageCache:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, bitmapUsed:Z
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 156
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v1, :cond_3

    .line 157
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 158
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    .line 159
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v4, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 160
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    const/4 v0, 0x1

    .line 162
    goto :goto_3

    .line 156
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method
