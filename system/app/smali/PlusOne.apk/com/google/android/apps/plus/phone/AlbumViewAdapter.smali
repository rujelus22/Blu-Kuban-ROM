.class public Lcom/google/android/apps/plus/phone/AlbumViewAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "AlbumViewAdapter.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mDobjanschiContext:Landroid/content/Context;

.field private mThumbnailSize:I

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "account"
    .parameter "gridView"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 49
    new-instance v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)V

    invoke-virtual {p4, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "context"
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 173
    const v1, 0x7f0d004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 175
    .local v0, albumPhoto:Landroid/widget/ImageView;
    if-nez p3, :cond_10

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :goto_f
    return-void

    .line 178
    :cond_10
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 107
    const v5, 0x7f07007d

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    const/16 v5, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_110

    .line 111
    const v5, 0x7f0d004d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/views/AlbumGridItemView;

    .line 115
    .local v16, albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    const/16 v5, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 116
    .local v7, mPhotoId:J
    const/16 v5, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 117
    .local v20, unsizedPhotoUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, photoUrl:Ljava/lang/String;
    new-instance v4, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    const/4 v15, 0x1

    move-object/from16 v10, p2

    move-object v12, v4

    invoke-static/range {v10 .. v15}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 122
    .local v18, coverBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setThumbnailSize(II)V

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 126
    const/4 v5, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_ee

    const/16 v19, 0x0

    .line 128
    .local v19, plusOneCount:I
    :goto_97
    if-lez v19, :cond_f6

    .line 129
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    .line 135
    :goto_a2
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_fd

    const/16 v17, 0x0

    .line 137
    .local v17, commentCount:I
    :goto_ad
    if-lez v17, :cond_105

    .line 138
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setCommentCount(Ljava/lang/Integer;)V

    .line 144
    :goto_b8
    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_10c

    const/4 v5, 0x1

    :goto_c3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setNotification(Z)V

    .line 146
    const/16 v5, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_10e

    const/4 v5, 0x1

    :goto_d3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setIsVideo(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v7           #mPhotoId:J
    .end local v9           #photoUrl:Ljava/lang/String;
    .end local v16           #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v17           #commentCount:I
    .end local v18           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v19           #plusOneCount:I
    .end local v20           #unsizedPhotoUrl:Ljava/lang/String;
    :cond_ed
    :goto_ed
    return-void

    .line 126
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v7       #mPhotoId:J
    .restart local v9       #photoUrl:Ljava/lang/String;
    .restart local v16       #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .restart local v18       #coverBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #unsizedPhotoUrl:Ljava/lang/String;
    :cond_ee
    const/4 v5, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    goto :goto_97

    .line 131
    .restart local v19       #plusOneCount:I
    :cond_f6
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    goto :goto_a2

    .line 135
    :cond_fd
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    goto :goto_ad

    .line 140
    .restart local v17       #commentCount:I
    :cond_105
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setCommentCount(Ljava/lang/Integer;)V

    goto :goto_b8

    .line 144
    :cond_10c
    const/4 v5, 0x0

    goto :goto_c3

    .line 146
    :cond_10e
    const/4 v5, 0x0

    goto :goto_d3

    .line 154
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v7           #mPhotoId:J
    .end local v9           #photoUrl:Ljava/lang/String;
    .end local v16           #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v17           #commentCount:I
    .end local v18           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v19           #plusOneCount:I
    .end local v20           #unsizedPhotoUrl:Ljava/lang/String;
    :cond_110
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_ed
.end method

.method public calculateThumbnailSize(Landroid/content/Context;I)V
    .registers 21
    .parameter "context"
    .parameter "padding"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 221
    :goto_8
    return-void

    .line 199
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 200
    .local v9, res:Landroid/content/res/Resources;
    const v17, 0x7f0c0061

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 201
    .local v8, minThumbnailSize:I
    const v17, 0x7f0c005f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 203
    .local v7, minSpacing:I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .local v6, metrics:Landroid/util/DisplayMetrics;
    const-string v17, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 205
    .local v16, wm:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sub-int v13, v17, p2

    .line 208
    .local v13, usableWidth:I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sub-int v12, v17, p2

    .line 210
    .local v12, usableHeight:I
    div-int v4, v13, v8

    .line 211
    .local v4, horizColumnsRaw:I
    add-int/lit8 v17, v4, -0x1

    mul-int v17, v17, v7

    sub-int v3, v13, v17

    .line 212
    .local v3, adjustedWidth:I
    div-int v5, v3, v8

    .line 213
    .local v5, horizColumnsWithPadding:I
    div-int v11, v3, v5

    .line 215
    .local v11, sizeUsingWidth:I
    div-int v15, v12, v8

    .line 216
    .local v15, vertColumnsRaw:I
    add-int/lit8 v17, v15, -0x1

    mul-int v17, v17, v7

    sub-int v2, v12, v17

    .line 217
    .local v2, adjustedHeight:I
    div-int v14, v2, v8

    .line 218
    .local v14, verColumnsWithPadding:I
    div-int v10, v2, v14

    .line 220
    .local v10, sizeUsingHeight:I
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    goto :goto_8
.end method

.method public isConfigured()Z
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, view:Landroid/view/View;
    return-object v1
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 64
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 65
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 66
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/service/EsService;->cancelCoverThumbnailLoad(Lcom/google/android/apps/plus/api/MediaRef;I)V

    goto :goto_a

    .line 68
    .end local v1           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v2           #v:Landroid/view/View;
    :cond_23
    return-void
.end method

.method public onResume()V
    .registers 10

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 73
    .local v8, v:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 74
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    iget v4, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mThumbnailSize:I

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 76
    .local v6, coverBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    invoke-direct {p0, v0, v8, v6}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 78
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v6           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v8           #v:Landroid/view/View;
    :cond_31
    return-void
.end method

.method public setThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V
    .registers 11
    .parameter "context"
    .parameter "ref"
    .parameter "cropType"
    .parameter "bitmap"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, amountOfViewsSet:I
    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    .line 102
    :cond_4
    :goto_4
    return-void

    .line 89
    :cond_5
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 90
    .local v2, v:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 91
    .local v3, viewRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 92
    invoke-direct {p0, p1, v2, p4}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 97
    .end local v2           #v:Landroid/view/View;
    .end local v3           #viewRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_2f
    const-string v4, "AlbumViewAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    if-nez v0, :cond_4

    .line 99
    const-string v4, "AlbumViewAdapter"

    const-string v5, "setThumbnail did not find a view"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
