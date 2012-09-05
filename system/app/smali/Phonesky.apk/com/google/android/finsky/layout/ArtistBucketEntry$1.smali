.class Lcom/google/android/finsky/layout/ArtistBucketEntry$1;
.super Ljava/lang/Object;
.source "ArtistBucketEntry.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ArtistBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ArtistBucketEntry;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ArtistBucketEntry;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 94
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 95
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v1, v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->requestLayout()V

    .line 102
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_27
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/ArtistBucketEntry$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
