.class public Lcom/google/android/finsky/adapters/ImageStripAdapter;
.super Ljava/lang/Object;
.source "ImageStripAdapter.java"


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mImageCount:I

.field private final mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private mImageIndexOffset:I

.field private final mImages:[Landroid/graphics/drawable/Drawable;

.field private final mLoadVideoFilmOverlay:Z

.field private final mVideoCount:I

.field private final mVideoFrameWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;IIZI)V
    .registers 9
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "imageCount"
    .parameter "videoCount"
    .parameter "showVideoFilmOverlay"
    .parameter "videoFrameWidth"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 37
    iput p3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    .line 38
    iput p4, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    .line 40
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    .line 41
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 42
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 44
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    iput v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageIndexOffset:I

    .line 45
    iput-boolean p5, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mLoadVideoFilmOverlay:Z

    .line 46
    iput p6, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoFrameWidth:I

    .line 47
    return-void
.end method


# virtual methods
.method public getChildCount()I
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "index"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V
    .registers 7
    .parameter "index"
    .parameter "dimension"
    .parameter "scaleFactor"

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1c

    .line 101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 110
    :goto_1b
    return-void

    .line 103
    :cond_1c
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    if-eqz v1, :cond_39

    .line 104
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 105
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_1b

    .line 107
    :cond_39
    invoke-virtual {p2, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 108
    invoke-virtual {p2, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_1b
.end method

.method public getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 73
    iget v2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    if-ge p3, v2, :cond_26

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04010a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/VideoFrame;

    .line 76
    .local v1, videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mLoadVideoFilmOverlay:Z

    if-eqz v2, :cond_25

    .line 77
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/VideoFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoFrameWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object v2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/layout/VideoFrame;->configureFilmOverlay(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 87
    .end local v1           #videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    :cond_25
    :goto_25
    return-object v1

    .line 84
    :cond_26
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, childView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    const v2, 0x7f020100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v1, v0

    .line 87
    goto :goto_25
.end method

.method public hasImageDimensionAt(I)Z
    .registers 4
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 116
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLeadingMargin()Z
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 142
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 146
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setImageAt(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "index"
    .parameter "drawable"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public setImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V
    .registers 4
    .parameter "index"
    .parameter "dim"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aput-object p2, v0, p1

    .line 65
    return-void
.end method

.method public toImageIndex(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageIndexOffset:I

    sub-int v0, p1, v0

    return v0
.end method

.method public toVideoIndex(I)I
    .registers 2
    .parameter "index"

    .prologue
    .line 60
    return p1
.end method

.method public unregisterAll()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 134
    return-void
.end method
