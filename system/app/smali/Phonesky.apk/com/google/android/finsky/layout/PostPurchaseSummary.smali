.class public Lcom/google/android/finsky/layout/PostPurchaseSummary;
.super Landroid/widget/RelativeLayout;
.source "PostPurchaseSummary.java"


# instance fields
.field private mAddedToLibrary:Landroid/widget/TextView;

.field private mAddedToLibraryImage:Landroid/widget/ImageView;

.field private final mAlignButtons:Z

.field private mButtonContainer:Landroid/view/View;

.field private mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field private mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v1, Lcom/android/vending/R$styleable;->PostPurchaseSummary:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAlignButtons:Z

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 7
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 72
    .local v0, backend:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7c

    .line 73
    iget-object v2, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_73

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070261

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_32
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v2, -0x1

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 81
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_57

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    :cond_57
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibrary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibraryImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getAddedToLibraryDrawableId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    return-void

    .line 73
    :cond_73
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 77
    :cond_7c
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 58
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 59
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 60
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibrary:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibraryImage:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    .line 63
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
    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 98
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAlignButtons:Z

    if-nez v0, :cond_8

    .line 108
    :cond_7
    :goto_7
    return-void

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7
.end method
