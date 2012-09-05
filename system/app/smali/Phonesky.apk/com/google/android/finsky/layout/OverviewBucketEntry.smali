.class public Lcom/google/android/finsky/layout/OverviewBucketEntry;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "OverviewBucketEntry.java"


# instance fields
.field protected mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private final mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

.field private final mBottomSeparatorPaint:Landroid/graphics/Paint;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mIsLastRow:Z

.field private final mLeftSeparatorPaint:Landroid/graphics/Paint;

.field protected mPrice:Landroid/widget/TextView;

.field protected mRating:Landroid/widget/RatingBar;

.field private mShowLeft:Z

.field protected mThumbnail:Landroid/widget/ImageView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0a0013

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 40
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowLeft:Z

    .line 45
    new-instance v2, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;-><init>(Lcom/google/android/finsky/layout/OverviewBucketEntry;)V

    iput-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f80

    invoke-static {v3, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getPixelsFromDips(FLandroid/content/res/Resources;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBottomSeparatorPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBottomSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    const v2, 0x7f0b0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 74
    .local v1, thickness:F
    iget-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBottomSeparatorPaint:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getPixelsFromDips(FLandroid/content/res/Resources;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    return-void
.end method

.method private static getPixelsFromDips(FLandroid/content/res/Resources;)F
    .registers 6
    .parameter "dips"
    .parameter "res"

    .prologue
    .line 218
    const v2, 0x7f0b0036

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 219
    .local v1, thickness:F
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 220
    .local v0, scale:F
    mul-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private setImage(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V
    .registers 15
    .parameter "mLoader"
    .parameter "document"

    .prologue
    const/4 v11, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 177
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 178
    .local v9, res:Landroid/content/res/Resources;
    const v0, 0x7f0b0033

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 182
    .local v5, height:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_51

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v10, 0x1

    .line 186
    .local v10, use2x1Promo:Z
    :goto_1e
    if-eqz v10, :cond_53

    .line 187
    mul-int/lit8 v4, v5, 0x2

    .line 188
    .local v4, width:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    .local v2, defaultImage:Landroid/graphics/Bitmap;
    :goto_32
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 196
    .local v8, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-static {p2, v4, v11}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, urlToLoad:Ljava/lang/String;
    if-eqz v8, :cond_67

    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 199
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 215
    :goto_50
    return-void

    .end local v1           #urlToLoad:Ljava/lang/String;
    .end local v2           #defaultImage:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    .end local v8           #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v10           #use2x1Promo:Z
    :cond_51
    move v10, v11

    .line 182
    goto :goto_1e

    .line 191
    .restart local v10       #use2x1Promo:Z
    :cond_53
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRelatedIconWidth(Landroid/content/Context;I)I

    move-result v4

    .line 192
    .restart local v4       #width:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2       #defaultImage:Landroid/graphics/Bitmap;
    goto :goto_32

    .line 202
    .restart local v1       #urlToLoad:Ljava/lang/String;
    .restart local v8       #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_64
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 206
    :cond_67
    iget-object v3, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v7

    .line 209
    .local v7, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-lez v4, :cond_78

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    :cond_78
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_50
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getHeight()I

    move-result v6

    .line 164
    .local v6, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowLeft:Z

    if-eqz v0, :cond_12

    .line 165
    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    if-nez v0, :cond_23

    .line 169
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBottomSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    :cond_23
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 81
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 84
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 86
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    .line 87
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 11
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "isLastRow"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    iput-boolean p3, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 101
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v0

    .line 103
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_73

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 114
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 119
    :goto_5e
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p2, p1, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p2, p1, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-static {p2, v6, v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setImage(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    .line 125
    return-void

    .line 116
    :cond_73
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_5e
.end method

.method public setLeftSeparatorVisibility(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowLeft:Z

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->invalidate()V

    .line 130
    return-void
.end method

.method public setMockDocument(I)V
    .registers 6
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 133
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 140
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_38

    .line 141
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 142
    const/4 v0, 0x0

    .line 144
    :cond_38
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "color"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    return-void
.end method
