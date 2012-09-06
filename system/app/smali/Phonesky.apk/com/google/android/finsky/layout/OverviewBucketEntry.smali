.class public Lcom/google/android/finsky/layout/OverviewBucketEntry;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "OverviewBucketEntry.java"


# instance fields
.field protected mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private final mHalfSeparatorThickness:I

.field private mIsLastRow:Z

.field protected mPrice:Landroid/widget/TextView;

.field protected mRating:Landroid/widget/RatingBar;

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:F

.field private mShowRight:Z

.field protected mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    .line 56
    iget v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getWidth()I

    move-result v10

    .line 176
    .local v10, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getHeight()I

    move-result v8

    .line 178
    .local v8, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    if-eqz v0, :cond_1a

    .line 179
    iget v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    sub-int v9, v10, v0

    .line 180
    .local v9, rightX:I
    int-to-float v1, v9

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    .end local v9           #rightX:I
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    if-nez v0, :cond_2b

    .line 184
    iget v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    sub-int v7, v8, v0

    .line 185
    .local v7, bottomY:I
    int-to-float v3, v7

    int-to-float v4, v10

    int-to-float v5, v7

    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    .end local v7           #bottomY:I
    :cond_2b
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 67
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 69
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 71
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    .line 72
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 13
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "isLastRow"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iput-boolean p3, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 85
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 88
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 90
    .local v1, docType:I
    const/16 v5, 0x10

    if-eq v1, v5, :cond_21

    const/16 v5, 0x11

    if-ne v1, v5, :cond_99

    :cond_21
    move v2, v4

    .line 92
    .local v2, isMagazine:Z
    :goto_22
    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v2, :cond_9b

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    :goto_2a
    invoke-virtual {v6, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v5, :cond_4f

    .line 95
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_a0

    .line 96
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 97
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v5, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 103
    :cond_4f
    :goto_4f
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v6, -0x1

    invoke-static {p2, p1, v5, v6}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 104
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p2, p1, v5, v6}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 106
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-static {p2, v4, v5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 108
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setVisibility(I)V

    .line 109
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v5, p2, p1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 112
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 114
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .end local v0           #descriptionStringId:I
    .end local v2           #isMagazine:Z
    :cond_99
    move v2, v3

    .line 90
    goto :goto_22

    .line 92
    .restart local v2       #isMagazine:Z
    :cond_9b
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    .line 99
    :cond_a0
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_4f
.end method

.method public setMockDocument(I)V
    .registers 6
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v1, :cond_b

    .line 125
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 127
    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v1, :cond_26

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 133
    :cond_26
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 136
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_45

    .line 137
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_45
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public setNoDocument()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v1, :cond_b

    .line 146
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v1, :cond_23

    .line 152
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 154
    :cond_23
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 155
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_31

    .line 156
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_31
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setVisibility(I)V

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 163
    return-void
.end method

.method public setRightSeparatorVisibility(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->invalidate()V

    .line 121
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    return-void
.end method
