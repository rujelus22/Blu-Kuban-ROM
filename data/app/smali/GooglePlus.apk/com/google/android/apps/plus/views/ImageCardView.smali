.class public Lcom/google/android/apps/plus/views/ImageCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "ImageCardView.java"


# static fields
.field private static sAlbumBitmap:Landroid/graphics/Bitmap;

.field private static sImageCardViewInitialized:Z

.field private static sVideoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field protected mContentFlags:J

.field protected mDesiredHeight:I

.field protected mDesiredWidth:I

.field protected mDestRect:Landroid/graphics/Rect;

.field protected mImage:Lcom/google/android/apps/plus/views/MediaImage;

.field protected mIsAlbum:Z

.field protected mIsVideo:Z

.field protected mMediaCount:I

.field protected mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field protected mThumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-boolean v1, Lcom/google/android/apps/plus/views/ImageCardView;->sImageCardViewInitialized:Z

    if-nez v1, :cond_20

    .line 58
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/ImageCardView;->sImageCardViewInitialized:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020153

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sVideoBitmap:Landroid/graphics/Bitmap;

    .line 63
    const v1, 0x7f020152

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sAlbumBitmap:Landroid/graphics/Bitmap;

    .line 66
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    .line 67
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/apps/plus/views/ImageCardView;->drawMediaTopAreaStage(Landroid/graphics/Canvas;II)V

    .line 189
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MediaImage;->refreshIfInvalidated()V

    .line 190
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_18

    .line 192
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/ImageCardView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    :cond_18
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-eqz v2, :cond_59

    .line 197
    sget-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sVideoBitmap:Landroid/graphics/Bitmap;

    .line 204
    .local v1, centerBitmap:Landroid/graphics/Bitmap;
    :goto_1e
    if-eqz v1, :cond_49

    .line 205
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    :cond_49
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/apps/plus/views/ImageCardView;->drawMediaTopAreaShadow(Landroid/graphics/Canvas;II)V

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ImageCardView;->drawTagBarIconAndBackground(Landroid/graphics/Canvas;II)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ImageCardView;->drawPlusOneBar(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/apps/plus/views/ImageCardView;->drawMediaBottomArea(Landroid/graphics/Canvas;IIII)I

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ImageCardView;->drawWhatsHot(Landroid/graphics/Canvas;)V

    .line 216
    return p5

    .line 198
    .end local v1           #centerBitmap:Landroid/graphics/Bitmap;
    :cond_59
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsAlbum:Z

    if-eqz v2, :cond_60

    .line 199
    sget-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sAlbumBitmap:Landroid/graphics/Bitmap;

    .restart local v1       #centerBitmap:Landroid/graphics/Bitmap;
    goto :goto_1e

    .line 201
    .end local v1           #centerBitmap:Landroid/graphics/Bitmap;
    :cond_60
    const/4 v1, 0x0

    .restart local v1       #centerBitmap:Landroid/graphics/Bitmap;
    goto :goto_1e
.end method

.method public getDesiredHeight()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDesiredHeight:I

    return v0
.end method

.method public getDesiredWidth()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDesiredWidth:I

    return v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    return v0
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 24
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 73
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/plus/views/StreamCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 76
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 77
    .local v12, mediaBytes:[B
    if-eqz v12, :cond_114

    .line 78
    invoke-static {v12}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v8

    .line 79
    .local v8, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    .line 80
    const/4 v9, 0x0

    .local v9, i:I
    array-length v10, v8

    .local v10, length:I
    :goto_18
    if-ge v9, v10, :cond_108

    .line 81
    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v11

    .line 82
    .local v11, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v15

    .line 84
    .local v15, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-eq v15, v1, :cond_2c

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v15, v1, :cond_39

    .line 85
    :cond_2c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3c

    .line 80
    :cond_39
    :goto_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 89
    :cond_3c
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v15, v1, :cond_5f

    .line 91
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    .line 92
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, mediaUrl:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/plus/util/ImageUtils;->rewriteYoutubeMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, rewrittenUrl:Ljava/lang/String;
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 95
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    .line 99
    .end local v13           #mediaUrl:Ljava/lang/String;
    .end local v14           #rewrittenUrl:Ljava/lang/String;
    :cond_5f
    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getPlayerWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mDesiredWidth:I

    .line 100
    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getPlayerHeight()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mDesiredHeight:I

    .line 102
    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaTag()J

    move-result-wide v3

    .line 103
    .local v3, photoId:J
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-eqz v1, :cond_fd

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 104
    .local v6, videoUri:Landroid/net/Uri;
    :goto_87
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-eqz v7, :cond_ff

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    :goto_96
    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mTag:Ljava/lang/CharSequence;

    if-nez v1, :cond_cc

    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 108
    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mTag:Ljava/lang/CharSequence;

    .line 109
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-eqz v1, :cond_102

    sget-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sTagVideoBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_c8
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mTagIcon:Landroid/graphics/Bitmap;

    .line 112
    :cond_cc
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-nez v1, :cond_39

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mDisplaySizeType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mDisplaySizeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 114
    :cond_e0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&google_plus:card_type=nonsquare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    goto/16 :goto_39

    .line 103
    .end local v6           #videoUri:Landroid/net/Uri;
    :cond_fd
    const/4 v6, 0x0

    goto :goto_87

    .line 104
    .restart local v6       #videoUri:Landroid/net/Uri;
    :cond_ff
    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_96

    .line 109
    :cond_102
    sget-object v1, Lcom/google/android/apps/plus/views/ImageCardView;->sTagAlbumBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_c8

    .line 119
    .end local v3           #photoId:J
    .end local v6           #videoUri:Landroid/net/Uri;
    .end local v11           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v15           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_108
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_121

    const/4 v1, 0x1

    :goto_110
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsAlbum:Z

    .line 122
    .end local v8           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v9           #i:I
    .end local v10           #length:I
    :cond_114
    const/16 v1, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/android/apps/plus/views/ImageCardView;->mContentFlags:J

    .line 123
    return-void

    .line 119
    .restart local v8       #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v9       #i:I
    .restart local v10       #length:I
    :cond_121
    const/4 v1, 0x0

    goto :goto_110
.end method

.method protected layoutElements(IIII)I
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    .line 157
    sget v1, Lcom/google/android/apps/plus/views/ImageCardView;->sXDoublePadding:I

    add-int v7, p3, v1

    .line 158
    .local v7, imageWidth:I
    sget v1, Lcom/google/android/apps/plus/views/ImageCardView;->sYDoublePadding:I

    add-int/2addr v1, p4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ImageCardView;->getMediaHeightPercentage()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 159
    .local v6, imageHeight:I
    move v3, v7

    .line 160
    .local v3, fetchWidth:I
    move v4, v6

    .line 163
    .local v4, fetchHeight:I
    invoke-static {}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getScreenDisplayType()I

    move-result v1

    if-ne v1, v5, :cond_1f

    iget v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDisplaySizeType:I

    if-nez v1, :cond_1f

    .line 165
    mul-int/lit8 v3, v3, 0x2

    .line 166
    mul-int/lit8 v4, v4, 0x2

    .line 169
    :cond_1f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    if-eqz v1, :cond_5b

    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 170
    .local v8, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :goto_25
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 172
    .local v0, request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    new-instance v1, Lcom/google/android/apps/plus/views/MediaImage;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/views/MediaImage;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/content/MediaImageRequest;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 173
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ImageCardView;->createTagBar(III)I

    .line 176
    sget v1, Lcom/google/android/apps/plus/views/ImageCardView;->sTopBorderPadding:I

    add-int/2addr v1, v6

    sget v2, Lcom/google/android/apps/plus/views/ImageCardView;->sYPadding:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/apps/plus/views/ImageCardView;->createPlusOneBar(III)I

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/ImageCardView;->createMediaBottomArea(IIII)I

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    sget v2, Lcom/google/android/apps/plus/views/ImageCardView;->sLeftBorderPadding:I

    sget v5, Lcom/google/android/apps/plus/views/ImageCardView;->sTopBorderPadding:I

    sget v9, Lcom/google/android/apps/plus/views/ImageCardView;->sLeftBorderPadding:I

    add-int/2addr v9, v7

    sget v10, Lcom/google/android/apps/plus/views/ImageCardView;->sTopBorderPadding:I

    add-int/2addr v10, v6

    invoke-virtual {v1, v2, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    return p4

    .line 169
    .end local v0           #request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    .end local v8           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_5b
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_25
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ImageCardView;->invalidate()V

    .line 225
    :cond_10
    return-void
.end method

.method public onRecycle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onRecycle()V

    .line 129
    iput-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mThumbnailUrl:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 131
    iput-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mContentFlags:J

    .line 134
    iput v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mMediaCount:I

    .line 135
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mIsVideo:Z

    .line 136
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onStart()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->load()V

    .line 144
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ImageCardView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/MediaImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 152
    :cond_e
    return-void
.end method
