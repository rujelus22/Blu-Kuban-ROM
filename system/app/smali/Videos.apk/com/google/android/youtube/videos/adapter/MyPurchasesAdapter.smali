.class public Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemLayout:I

.field private final missingPoster:Landroid/graphics/Bitmap;

.field private offlineManagement:Z

.field private final posters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final res:Landroid/content/res/Resources;

.field private final viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "itemLayout"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 59
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput p2, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->itemLayout:I

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posters:Ljava/util/Map;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->missingPoster:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private compare(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Purchase;)I
    .registers 6
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 135
    .local v0, now:Ljava/util/Date;
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 136
    const/4 v1, 0x1

    .line 141
    :goto_12
    return v1

    .line 138
    :cond_13
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 139
    const/4 v1, -0x1

    goto :goto_12

    .line 141
    :cond_21
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    goto :goto_12
.end method

.method private dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    .registers 4
    .parameter "videoId"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    .line 287
    .local v0, result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    if-nez v0, :cond_14

    .line 288
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    .end local v0           #result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    invoke-direct {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;-><init>()V

    .line 289
    .restart local v0       #result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_14
    return-object v0
.end method

.method private getStatusText(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;I)Ljava/lang/String;
    .registers 8
    .parameter "status"
    .parameter "progress"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 264
    if-nez p1, :cond_6

    .line 279
    :goto_5
    return-object v0

    .line 267
    :cond_6
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;->$SwitchMap$com$google$android$youtube$videos$adapter$MyPurchasesAdapter$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    goto :goto_5

    .line 269
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00b1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 271
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00b2

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 273
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 275
    :pswitch_40
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 277
    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 267
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_12
        :pswitch_24
        :pswitch_36
        :pswitch_40
        :pswitch_4a
    .end packed-switch
.end method

.method private internalSort()V
    .registers 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    .line 125
    :cond_7
    return-void

    .line 114
    :cond_8
    const/4 v0, 0x1

    .local v0, i:I
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Purchase;

    .line 117
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    add-int/lit8 v1, v0, -0x1

    .local v1, j:I
    :goto_17
    if-ltz v1, :cond_31

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Purchase;

    invoke-direct {p0, v3, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->compare(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Purchase;)I

    move-result v3

    if-lez v3, :cond_31

    .line 118
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSet(ILjava/lang/Object;)V

    .line 117
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 120
    :cond_31
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSet(ILjava/lang/Object;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 122
    .end local v1           #j:I
    .end local v2           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v3

    iput v0, v3, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method private isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z
    .registers 6
    .parameter "purchase"
    .parameter "now"

    .prologue
    .line 161
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 162
    .local v1, videoId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v0

    .line 163
    .local v0, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    invoke-virtual {p2, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public addAndSort(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Purchase;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalAdd(Ljava/lang/Iterable;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSort()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 206
    if-nez p2, :cond_c7

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->itemLayout:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance v4, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;-><init>(Landroid/view/View;)V

    .line 209
    .local v4, holder:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    :goto_1d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/model/Purchase;

    .line 215
    .local v8, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v10, v8, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 217
    .local v10, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v12, v12, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-nez v12, :cond_cf

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->missingPoster:Landroid/graphics/Bitmap;

    .line 219
    .local v6, poster:Landroid/graphics/Bitmap;
    :goto_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->missingPoster:Landroid/graphics/Bitmap;

    if-ne v6, v12, :cond_e0

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 221
    .local v7, posterScaleType:Landroid/widget/ImageView$ScaleType;
    :goto_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    invoke-virtual {v12, v4, v10, v6, v7}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->populateViews(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 223
    iget-object v12, v8, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v11, v12, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 224
    .local v11, videoId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v1

    .line 226
    .local v1, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v12, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v12, :cond_e4

    iget-object v2, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    .line 230
    .local v2, expirationDate:Ljava/util/Date;
    :goto_4e
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 231
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v8, v5}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v12

    if-nez v12, :cond_61

    if-eqz v2, :cond_e8

    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_e8

    :cond_61
    const/4 v3, 0x1

    .line 234
    .local v3, expired:Z
    :goto_62
    if-eqz v3, :cond_eb

    .line 235
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    const v13, 0x7f0b00b8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 236
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v14, 0x7f0e0003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_88
    :goto_88
    iget-object v13, v4, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->poster:Landroid/widget/ImageView;

    if-eqz v3, :cond_132

    const/16 v12, 0x3f

    :goto_8e
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 254
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->downloadStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v3, :cond_136

    const/16 v12, 0x8

    :goto_99
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->downloadStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    iget v14, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getStatusText(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$200(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Lcom/google/android/youtube/core/ui/CheckedImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    if-eqz v12, :cond_139

    if-nez v3, :cond_139

    const/4 v12, 0x0

    :goto_ba
    invoke-virtual {v13, v12}, Lcom/google/android/youtube/core/ui/CheckedImageView;->setVisibility(I)V

    .line 258
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$200(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Lcom/google/android/youtube/core/ui/CheckedImageView;

    move-result-object v12

    iget-boolean v13, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    invoke-virtual {v12, v13}, Lcom/google/android/youtube/core/ui/CheckedImageView;->setChecked(Z)V

    .line 260
    return-object p2

    .line 211
    .end local v1           #data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    .end local v2           #expirationDate:Ljava/util/Date;
    .end local v3           #expired:Z
    .end local v4           #holder:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #poster:Landroid/graphics/Bitmap;
    .end local v7           #posterScaleType:Landroid/widget/ImageView$ScaleType;
    .end local v8           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .end local v10           #video:Lcom/google/android/youtube/core/model/Video;
    .end local v11           #videoId:Ljava/lang/String;
    :cond_c7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;

    .restart local v4       #holder:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;
    goto/16 :goto_1d

    .line 217
    .restart local v8       #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .restart local v10       #video:Lcom/google/android/youtube/core/model/Video;
    :cond_cf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posters:Ljava/util/Map;

    iget-object v13, v10, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v13, v13, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v6, v12

    goto/16 :goto_2f

    .line 219
    .restart local v6       #poster:Landroid/graphics/Bitmap;
    :cond_e0
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_37

    .line 226
    .restart local v1       #data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    .restart local v7       #posterScaleType:Landroid/widget/ImageView$ScaleType;
    .restart local v11       #videoId:Ljava/lang/String;
    :cond_e4
    iget-object v2, v8, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    goto/16 :goto_4e

    .line 231
    .restart local v2       #expirationDate:Ljava/util/Date;
    .restart local v5       #now:Ljava/util/Date;
    :cond_e8
    const/4 v3, 0x0

    goto/16 :goto_62

    .line 239
    .restart local v3       #expired:Z
    :cond_eb
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    if-eqz v2, :cond_88

    .line 241
    invoke-static {v2, v5}, Lcom/google/android/youtube/videos/utils/ExpirationUtil;->getRemainingDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 242
    .local v9, remainingDays:I
    const/16 v12, 0x3c

    if-gt v9, v12, :cond_88

    .line 243
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    invoke-static {v2, v5, v13}, Lcom/google/android/youtube/videos/utils/ExpirationUtil;->getTimeToExpirationString(Ljava/util/Date;Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    mul-int/lit8 v12, v9, 0x18

    const/16 v15, 0x18

    if-ge v12, v15, :cond_12e

    const v12, 0x7f0e000a

    :goto_11d
    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    #getter for: Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_88

    .line 245
    :cond_12e
    const v12, 0x7f0e0003

    goto :goto_11d

    .line 252
    .end local v9           #remainingDays:I
    :cond_132
    const/16 v12, 0xff

    goto/16 :goto_8e

    .line 254
    :cond_136
    const/4 v12, 0x0

    goto/16 :goto_99

    .line 257
    :cond_139
    const/4 v12, 0x4

    goto :goto_ba
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 8
    .parameter "purchase"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 74
    .local v2, videoId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v0

    .line 75
    .local v0, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    if-ltz v3, :cond_31

    .line 77
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 78
    .local v1, previous:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 82
    :cond_2b
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-super {p0, v3, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 90
    .end local v1           #previous:Lcom/google/android/youtube/core/model/Purchase;
    :cond_30
    :goto_30
    return-void

    .line 85
    :cond_31
    iget-object v3, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posters:Ljava/util/Map;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method public isExpired(I)Z
    .registers 4
    .parameter "index"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isOfflineManagement()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    return v0
.end method

.method public setOfflineManagement(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    .line 194
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 195
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 197
    :cond_b
    return-void
.end method

.method public setPinState(Ljava/lang/String;ZLcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;ILjava/util/Date;)V
    .registers 12
    .parameter "videoId"
    .parameter "pinned"
    .parameter "status"
    .parameter "progress"
    .parameter "expirationDate"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v1

    .line 171
    .local v1, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-nez v5, :cond_c

    if-nez p5, :cond_18

    :cond_c
    iget-object v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v5, :cond_41

    iget-object v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    invoke-virtual {v5, p5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    :cond_18
    move v2, v4

    .line 173
    .local v2, expirationDateChanged:Z
    :goto_19
    iget-boolean v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    if-ne v5, p2, :cond_27

    iget-object v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    if-ne v5, p3, :cond_27

    iget v5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    if-ne v5, p4, :cond_27

    if-eqz v2, :cond_43

    :cond_27
    move v0, v4

    .line 178
    .local v0, changed:Z
    :goto_28
    if-eqz v0, :cond_40

    .line 179
    iput-boolean p2, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    .line 180
    iput-object p3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 181
    iput p4, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    .line 182
    iput-object p5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 184
    if-eqz v2, :cond_3d

    .line 185
    invoke-direct {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSort()V

    .line 187
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 190
    :cond_40
    return-void

    .end local v0           #changed:Z
    .end local v2           #expirationDateChanged:Z
    :cond_41
    move v2, v3

    .line 171
    goto :goto_19

    .restart local v2       #expirationDateChanged:Z
    :cond_43
    move v0, v3

    .line 173
    goto :goto_28
.end method

.method public setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "posterUri"
    .parameter "poster"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posters:Ljava/util/Map;

    if-eqz p2, :cond_13

    .end local p2
    :goto_c
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_12
    return-void

    .line 146
    .restart local p2
    :cond_13
    iget-object p2, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->missingPoster:Landroid/graphics/Bitmap;

    goto :goto_c
.end method
