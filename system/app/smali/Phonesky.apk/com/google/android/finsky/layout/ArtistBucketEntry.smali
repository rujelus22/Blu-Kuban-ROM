.class public Lcom/google/android/finsky/layout/ArtistBucketEntry;
.super Lcom/google/android/finsky/layout/CellWithOverlay;
.source "ArtistBucketEntry.java"


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field protected mEnforceRatio:Z

.field protected mImageView:Landroid/widget/ImageView;

.field protected mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v1, Lcom/android/vending/R$styleable;->ArtistBucketEntry:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/android/finsky/layout/CellWithOverlay;->onFinishInflate()V

    .line 60
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    if-nez v2, :cond_8

    .line 67
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    .line 74
    :goto_7
    return-void

    .line 69
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 70
    .local v1, width:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 71
    .local v0, height:I
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    goto :goto_7
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;I)V
    .registers 13
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "minImageHeight"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v1

    .line 85
    .local v1, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOverlayCaption(Ljava/lang/String;)V

    .line 90
    iput-boolean v8, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    .line 91
    new-instance v2, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;-><init>(Lcom/google/android/finsky/layout/ArtistBucketEntry;)V

    .line 105
    .local v2, handler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    invoke-static {p2, v7, p3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, imageUrl:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    .line 107
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-interface {v2, v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    .line 109
    iget-object v4, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "clickListener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
