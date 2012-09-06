.class public Lcom/google/android/apps/plus/views/PlacesMapView;
.super Landroid/widget/ImageView;
.source "PlacesMapView.java"


# instance fields
.field private final mAspectRatio:I

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PlacesMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PlacesMapView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mMaxWidth:I

    .line 34
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mAspectRatio:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 56
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 58
    .local v0, height:I
    iget v2, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapWidth:I

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapHeight:I

    if-nez v2, :cond_20

    .line 61
    :cond_10
    iget v2, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mMaxWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mAspectRatio:I

    div-int v0, v2, v3

    .line 66
    :goto_1c
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/views/PlacesMapView;->setMeasuredDimension(II)V

    .line 67
    return-void

    .line 63
    :cond_20
    iget v2, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mMaxWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapWidth:I

    div-int v0, v2, v3

    goto :goto_1c
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 42
    if-eqz p1, :cond_e

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PlacesMapView;->mBitmapHeight:I

    .line 46
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    return-void
.end method
