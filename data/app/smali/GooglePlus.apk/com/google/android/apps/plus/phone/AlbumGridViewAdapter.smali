.class public Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "AlbumGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;
    }
.end annotation


# instance fields
.field private final mAlbumType:Ljava/lang/Integer;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field private final mLandscape:Z

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSelectedMediaRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailSize:I

.field private final mViewUseListener:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;

.field private final mViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Integer;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;)V
    .registers 11
    .parameter "context"
    .parameter "cursor"
    .parameter "albumType"
    .parameter "gridView"
    .parameter "clickListener"
    .parameter "longClickListener"
    .parameter "viewUseListener"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3b

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mLandscape:Z

    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mLandscape:Z

    if-eqz v0, :cond_3d

    :goto_1f
    invoke-virtual {p4, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 82
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->calculateThumbnailSize(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    .line 84
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;

    .line 85
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 87
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 88
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mAlbumType:Ljava/lang/Integer;

    .line 91
    new-instance v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;)V

    invoke-virtual {p4, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V

    .line 108
    return-void

    .line 78
    :cond_3b
    const/4 v0, 0x0

    goto :goto_19

    :cond_3d
    move v1, v2

    .line 80
    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    return-object v0
.end method

.method private calculateThumbnailSize(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;)I
    .registers 25
    .parameter "context"
    .parameter "gridView"

    .prologue
    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 285
    .local v10, res:Landroid/content/res/Resources;
    const v19, 0x7f0d00a1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 286
    .local v9, minThumbnailSize:I
    const v19, 0x7f0d0096

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 288
    .local v8, minSpacing:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 289
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 291
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 292
    .local v7, metrics:Landroid/util/DisplayMetrics;
    const-string v19, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 293
    .local v18, wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 295
    iget v15, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 296
    .local v15, usableWidth:I
    iget v14, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 298
    .local v14, usableHeight:I
    div-int v5, v15, v9

    .line 299
    .local v5, horizColumnsRaw:I
    add-int/lit8 v19, v5, -0x1

    mul-int v19, v19, v8

    sub-int v3, v15, v19

    .line 300
    .local v3, adjustedWidth:I
    div-int v6, v3, v9

    .line 301
    .local v6, horizColumnsWithPadding:I
    div-int v12, v3, v6

    .line 303
    .local v12, sizeUsingWidth:I
    div-int v17, v14, v9

    .line 304
    .local v17, vertColumnsRaw:I
    add-int/lit8 v19, v17, -0x1

    mul-int v19, v19, v8

    sub-int v2, v14, v19

    .line 305
    .local v2, adjustedHeight:I
    div-int v16, v2, v9

    .line 306
    .local v16, verColumnsWithPadding:I
    div-int v11, v2, v16

    .line 308
    .local v11, sizeUsingHeight:I
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 309
    .local v13, thumbnailSize:I
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    div-int v4, v19, v13

    .line 310
    .local v4, columnCount:I
    const-string v19, "AlbumGridViewAdapter"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_b6

    .line 311
    const-string v19, "AlbumGridViewAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Usable width: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", usable height: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v19, "AlbumGridViewAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Thumbnail size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", columns: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_b6
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 316
    return v13
.end method

.method private createMediaRef(Ljava/lang/String;JZLjava/lang/String;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 13
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "isVideo"
    .parameter "unsizedPhotoUrl"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mAlbumType:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mAlbumType:Ljava/lang/Integer;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 140
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz p4, :cond_25

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    :goto_20
    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 145
    :goto_24
    return-object v0

    .line 140
    :cond_25
    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_20

    .line 143
    :cond_28
    iget v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    invoke-static {v0, p5}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, photoUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    goto :goto_24
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 158
    .local v9, cursorPosition:I
    const v1, 0x7f0800a0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    const v1, 0x7f09003d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v7, p1

    .line 162
    check-cast v7, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;

    .line 163
    .local v7, albumPhoto:Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;
    const/16 v1, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16e

    .line 165
    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, ownerGaiaId:Ljava/lang/String;
    const/16 v1, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 167
    .local v3, photoId:J
    const/16 v1, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_133

    const/4 v5, 0x1

    .line 168
    .local v5, isVideo:Z
    :goto_72
    const/16 v1, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, unsizedPhotoUrl:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 170
    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->createMediaRef(Ljava/lang/String;JZLjava/lang/String;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v12

    .line 174
    .local v12, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mAlbumType:Ljava/lang/Integer;

    if-eqz v1, :cond_136

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mAlbumType:Ljava/lang/Integer;

    const v15, 0x7fffffff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 176
    new-instance v10, Lcom/google/android/apps/plus/content/LocalImageRequest;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    invoke-direct {v10, v12, v1, v15}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 181
    .local v10, imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :goto_a4
    invoke-virtual {v7, v10}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 182
    invoke-virtual {v7, v12}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setTag(Ljava/lang/Object;)V

    .line 185
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_145

    const/4 v14, 0x0

    .line 187
    .local v14, plusOneCount:I
    :goto_b4
    if-lez v14, :cond_14e

    .line 188
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    .line 194
    :goto_bd
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v8, 0x0

    .line 196
    .local v8, commentCount:I
    :goto_c7
    if-lez v8, :cond_15d

    .line 197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setCommentCount(Ljava/lang/Integer;)V

    .line 203
    :goto_d0
    const/16 v1, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_163

    const/4 v1, 0x1

    :goto_db
    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setNotification(Z)V

    .line 205
    invoke-virtual {v7, v5}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setIsVideo(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mSelectedMediaRefs:Ljava/util/HashSet;

    if-eqz v1, :cond_166

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/ColumnGridView;->select(I)V

    .line 215
    :goto_f8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v2           #ownerGaiaId:Ljava/lang/String;
    .end local v3           #photoId:J
    .end local v5           #isVideo:Z
    .end local v6           #unsizedPhotoUrl:Ljava/lang/String;
    .end local v8           #commentCount:I
    .end local v10           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v12           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v14           #plusOneCount:I
    :cond_10d
    :goto_10d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mLandscape:Z

    if-eqz v1, :cond_173

    const/4 v13, 0x1

    .line 224
    .local v13, orientation:I
    :goto_114
    new-instance v11, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    const/4 v1, -0x3

    invoke-direct {v11, v13, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(II)V

    .line 226
    .local v11, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;

    if-eqz v1, :cond_132

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_132

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;

    invoke-interface {v1, v9}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;->onViewUsed(I)V

    .line 231
    :cond_132
    return-void

    .line 167
    .end local v11           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v13           #orientation:I
    .restart local v2       #ownerGaiaId:Ljava/lang/String;
    .restart local v3       #photoId:J
    :cond_133
    const/4 v5, 0x0

    goto/16 :goto_72

    .line 178
    .restart local v5       #isVideo:Z
    .restart local v6       #unsizedPhotoUrl:Ljava/lang/String;
    .restart local v12       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_136
    new-instance v10, Lcom/google/android/apps/plus/content/RemoteImageRequest;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mThumbnailSize:I

    invoke-direct {v10, v12, v1, v15}, Lcom/google/android/apps/plus/content/RemoteImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .restart local v10       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto/16 :goto_a4

    .line 185
    :cond_145
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto/16 :goto_b4

    .line 190
    .restart local v14       #plusOneCount:I
    :cond_14e
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 194
    :cond_154
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto/16 :goto_c7

    .line 199
    .restart local v8       #commentCount:I
    :cond_15d
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setCommentCount(Ljava/lang/Integer;)V

    goto/16 :goto_d0

    .line 203
    :cond_163
    const/4 v1, 0x0

    goto/16 :goto_db

    .line 211
    :cond_166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/ColumnGridView;->deselect(I)V

    goto :goto_f8

    .line 219
    .end local v2           #ownerGaiaId:Ljava/lang/String;
    .end local v3           #photoId:J
    .end local v5           #isVideo:Z
    .end local v6           #unsizedPhotoUrl:Ljava/lang/String;
    .end local v8           #commentCount:I
    .end local v10           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v12           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v14           #plusOneCount:I
    :cond_16e
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_10d

    .line 222
    :cond_173
    const/4 v13, 0x2

    goto :goto_114
.end method

.method public getMediaRefForItem(I)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 9
    .parameter "position"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 127
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, ownerGaiaId:Ljava/lang/String;
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 129
    .local v2, photoId:J
    const/16 v0, 0xe

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v4, 0x1

    .line 130
    .local v4, isVideo:Z
    :goto_21
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, unsizedPhotoUrl:Ljava/lang/String;
    move-object v0, p0

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->createMediaRef(Ljava/lang/String;JZLjava/lang/String;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 133
    .end local v1           #ownerGaiaId:Ljava/lang/String;
    .end local v2           #photoId:J
    .end local v4           #isVideo:Z
    .end local v5           #unsizedPhotoUrl:Ljava/lang/String;
    :goto_2c
    return-object v0

    .line 129
    .restart local v1       #ownerGaiaId:Ljava/lang/String;
    .restart local v2       #photoId:J
    :cond_2d
    const/4 v4, 0x0

    goto :goto_21

    .line 133
    .end local v1           #ownerGaiaId:Ljava/lang/String;
    .end local v2           #photoId:J
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getTimestampForItem(I)J
    .registers 5
    .parameter "item"

    .prologue
    const/16 v2, 0xf

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 116
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 117
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 118
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 121
    :goto_18
    return-wide v1

    :cond_19
    const-wide/16 v1, 0x0

    goto :goto_18
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 239
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 263
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onResume()V

    .line 265
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 266
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    .line 268
    .local v0, albumPhoto:Lcom/google/android/apps/plus/views/EsImageView;
    if-eqz v0, :cond_9

    .line 269
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onResume()V

    .line 270
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->invalidate()V

    goto :goto_9

    .line 273
    .end local v0           #albumPhoto:Lcom/google/android/apps/plus/views/EsImageView;
    .end local v2           #view:Landroid/view/View;
    :cond_27
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onStop()V

    .line 249
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mViews:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 250
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    .line 252
    .local v0, albumPhoto:Lcom/google/android/apps/plus/views/EsImageView;
    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onStop()V

    goto :goto_9

    .line 256
    .end local v0           #albumPhoto:Lcom/google/android/apps/plus/views/EsImageView;
    .end local v2           #view:Landroid/view/View;
    :cond_24
    return-void
.end method

.method public setSelectedMediaRefs(Ljava/util/HashSet;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, selectedPhotoUrls:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->mSelectedMediaRefs:Ljava/util/HashSet;

    .line 112
    return-void
.end method
