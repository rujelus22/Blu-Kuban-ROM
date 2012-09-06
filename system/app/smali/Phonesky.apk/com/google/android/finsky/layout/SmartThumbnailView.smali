.class public Lcom/google/android/finsky/layout/SmartThumbnailView;
.super Lcom/google/android/finsky/layout/FifeImageView;
.source "SmartThumbnailView.java"


# instance fields
.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mImageTypes:[I

.field private mUsePromoPlaceholder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SmartThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/SmartThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v1, Lcom/android/vending/R$styleable;->FifeImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mUsePromoPlaceholder:Z

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 4
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    .line 47
    return-void

    .line 46
    :array_a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V
    .registers 5
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "imageTypes"

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 51
    iput-object p2, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 52
    iput-object p3, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mImageTypes:[I

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setLoaded(Z)V

    .line 54
    iput v0, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mRequestCount:I

    .line 56
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->loadImageIfNecessary()V

    .line 57
    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v3, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v3, :cond_7

    .line 75
    const/4 v1, 0x0

    .line 85
    :goto_6
    return-object v1

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getWidth()I

    move-result v2

    .line 79
    .local v2, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getHeight()I

    move-result v0

    .line 81
    .local v0, height:I
    if-lez v0, :cond_1a

    iget-object v3, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mImageTypes:[I

    invoke-static {v3, v5, v0, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    .line 85
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_19
    goto :goto_6

    .line 81
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_1a
    iget-object v3, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mImageTypes:[I

    invoke-static {v3, v2, v5, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    goto :goto_19
.end method

.method protected getPlaceholder()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_6

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_5
    return-object v0

    .line 65
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mUsePromoPlaceholder:Z

    if-eqz v0, :cond_19

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 68
    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/layout/SmartThumbnailView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5
.end method
