.class public Lcom/google/android/finsky/layout/ThumbnailListener;
.super Ljava/lang/Object;
.source "ThumbnailListener.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# instance fields
.field private final mFadeIn:Z

.field protected final mImageView:Landroid/widget/ImageView;

.field private final mViewToBeUpdated:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;Z)V
    .registers 4
    .parameter "imageView"
    .parameter "viewToBeUpdated"
    .parameter "fadeIn"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    .line 49
    iput-object p2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToBeUpdated:Landroid/view/View;

    .line 50
    iput-boolean p3, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mFadeIn:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected onImageFailed()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 6
    .parameter "bitmapContainer"

    .prologue
    const/4 v2, -0x2

    .line 60
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, response:Landroid/graphics/Bitmap;
    if-nez v0, :cond_b

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ThumbnailListener;->onImageFailed()V

    .line 82
    :goto_a
    return-void

    .line 67
    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToBeUpdated:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToBeUpdated:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    :cond_39
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mFadeIn:Z

    if-eqz v1, :cond_43

    .line 78
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 80
    :cond_43
    iget-object v1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/ThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
