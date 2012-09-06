.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;
.super Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewThumbnailListener"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3
    .parameter "imageView"
    .parameter "url"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->imageView:Landroid/widget/ImageView;

    .line 201
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->url:Ljava/lang/String;

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method public onThumbnailReady(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 4
    .parameter "thumbnail"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 215
    :cond_1c
    return-void
.end method
