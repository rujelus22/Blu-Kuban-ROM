.class public Lcom/google/android/finsky/layout/MagazineBucketEntry;
.super Landroid/widget/RelativeLayout;
.source "MagazineBucketEntry.java"


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private final mCoverMaxWidth:I

.field private final mCoverMinMargin:I

.field protected mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field protected final mRatio:F

.field private mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v1, 0x3fb33333

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mRatio:F

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMaxWidth:I

    .line 53
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMinMargin:I

    .line 54
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 61
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 63
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getWidth()I

    move-result v1

    .line 120
    .local v1, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getHeight()I

    move-result v0

    .line 123
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingBottom()I

    move-result v4

    sub-int v3, v0, v4

    .line 124
    .local v3, y:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 126
    .local v2, x:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 127
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 129
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_59

    .line 130
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 131
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 134
    :cond_59
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Lcom/google/android/finsky/layout/SmartThumbnailView;->layout(IIII)V

    .line 137
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v4, v7, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 138
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 69
    .local v0, availableWidth:I
    iget v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMaxWidth:I

    iget v11, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMinMargin:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v0, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 71
    .local v8, maxCoverWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingTop()I

    move-result v3

    .line 73
    .local v3, height:I
    int-to-float v10, v8

    const v11, 0x3fb33333

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 74
    .local v7, mMaxImageHeight:I
    const/high16 v10, 0x4000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 75
    .local v6, imageWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/SmartThumbnailView;->isLoaded()Z

    move-result v10

    if-nez v10, :cond_81

    .line 78
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/high16 v11, 0x4000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v6, v11}, Lcom/google/android/finsky/layout/SmartThumbnailView;->measure(II)V

    .line 98
    :goto_33
    add-int/2addr v3, v7

    .line 99
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    .line 101
    const/high16 v10, -0x8000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 102
    .local v9, textWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_5c

    .line 103
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/widget/TextView;->measure(II)V

    .line 104
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v3, v10

    .line 106
    :cond_5c
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 107
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v3, v10

    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingBottom()I

    move-result v10

    add-int/2addr v3, v10

    .line 111
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    const/high16 v11, 0x4000

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setMeasuredDimension(II)V

    .line 115
    return-void

    .line 81
    .end local v9           #textWidthSpec:I
    :cond_81
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 82
    .local v4, imageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 84
    .local v5, imageRatio:F
    const v10, 0x3fb33333

    cmpl-float v10, v5, v10

    if-lez v10, :cond_af

    .line 86
    int-to-float v10, v7

    div-float/2addr v10, v5

    float-to-int v2, v10

    .line 87
    .local v2, coverWidth:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/high16 v11, 0x4000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/finsky/layout/SmartThumbnailView;->measure(II)V

    goto :goto_33

    .line 91
    .end local v2           #coverWidth:I
    :cond_af
    int-to-float v10, v8

    mul-float/2addr v10, v5

    float-to-int v1, v10

    .line 92
    .local v1, coverHeight:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/high16 v11, 0x4000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v6, v11}, Lcom/google/android/finsky/layout/SmartThumbnailView;->measure(II)V

    goto/16 :goto_33
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V
    .registers 16
    .parameter "bitmapLoader"
    .parameter "mainDocument"
    .parameter "document"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 146
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v6, p3, p1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 148
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, docTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    if-eqz p2, :cond_23

    .line 151
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, mainTitle:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v6, 0x8

    :goto_20
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    .end local v5           #mainTitle:Ljava/lang/String;
    :cond_23
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 156
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v4

    .line 157
    .local v4, firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v6, 0x6

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 160
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0046

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    .local v1, badgeSize:I
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v6, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 164
    .end local v1           #badgeSize:I
    :cond_46
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .end local v0           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v4           #firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :goto_53
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v2

    .line 173
    .local v2, descriptionStringId:I
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v7

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v11}, Lcom/google/android/finsky/layout/DecoratedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void

    .end local v2           #descriptionStringId:I
    .restart local v5       #mainTitle:Ljava/lang/String;
    :cond_7c
    move v6, v7

    .line 152
    goto :goto_20

    .line 166
    .end local v5           #mainTitle:Ljava/lang/String;
    :cond_7e
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v6, v9, v9, v9, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_53
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "clickListener"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method
