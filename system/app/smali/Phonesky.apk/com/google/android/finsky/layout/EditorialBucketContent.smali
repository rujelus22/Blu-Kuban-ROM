.class public Lcom/google/android/finsky/layout/EditorialBucketContent;
.super Landroid/widget/RelativeLayout;
.source "EditorialBucketContent.java"


# instance fields
.field private final mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

.field protected mBuyButton:Landroid/widget/TextView;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field protected mDescription:Landroid/widget/TextView;

.field protected mThumbnail:Landroid/widget/ImageView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/google/android/finsky/layout/EditorialBucketContent$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EditorialBucketContent$1;-><init>(Lcom/google/android/finsky/layout/EditorialBucketContent;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    .line 55
    return-void
.end method

.method private setImage(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V
    .registers 12
    .parameter "mLoader"
    .parameter "document"

    .prologue
    const/4 v8, 0x0

    .line 126
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    .local v2, defaultImage:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    .local v5, height:I
    mul-int/lit8 v4, v5, 0x2

    .line 131
    .local v4, width:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 132
    .local v7, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-static {p2, v4, v8}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, urlToLoad:Ljava/lang/String;
    if-eqz v7, :cond_3d

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 135
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 148
    :goto_39
    return-void

    .line 138
    :cond_3a
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 142
    :cond_3d
    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 145
    .local v6, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_39
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 64
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 172
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 176
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 152
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 155
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    .line 156
    .local v4, devNameWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 157
    .local v5, titleHeight:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 158
    .local v1, buyButtonWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 160
    .local v0, buyButtonHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 162
    .local v6, totalWidth:I
    add-int v7, v1, v4

    if-lt v7, v6, :cond_3c

    if-ge v5, v0, :cond_3c

    .line 163
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v2

    .line 164
    .local v2, devNameMeasuredHeight:I
    sub-int v3, v6, v1

    .line 165
    .local v3, devNameNewWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 168
    .end local v2           #devNameMeasuredHeight:I
    .end local v3           #devNameNewWidth:I
    :cond_3c
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 11
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "document"
    .parameter "referrer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v0

    .line 80
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitle(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p3, p1, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-static {p3, v4, v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v5, p4, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setImage(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    .line 96
    return-void
.end method

.method public setMockDocument(I)V
    .registers 6
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 99
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 105
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_33

    .line 106
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 107
    const/4 v0, 0x0

    .line 109
    :cond_33
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "color"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 119
    return-void
.end method
