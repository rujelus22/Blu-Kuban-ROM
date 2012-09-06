.class public Lcom/google/android/finsky/layout/ArtistBucketEntry;
.super Lcom/google/android/finsky/layout/CellWithOverlay;
.source "ArtistBucketEntry.java"


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field protected mEnforceRatio:Z

.field protected mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field protected mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget-object v1, Lcom/android/vending/R$styleable;->ArtistBucketEntry:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/android/finsky/layout/CellWithOverlay;->onFinishInflate()V

    .line 55
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 56
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 61
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    if-nez v2, :cond_8

    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    .line 69
    :goto_7
    return-void

    .line 64
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 65
    .local v1, width:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 66
    .local v0, height:I
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    goto :goto_7
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V
    .registers 5
    .parameter "bitmapLoader"
    .parameter "document"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOverlayCaption(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "clickListener"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
