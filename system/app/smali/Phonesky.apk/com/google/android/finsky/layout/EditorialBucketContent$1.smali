.class Lcom/google/android/finsky/layout/EditorialBucketContent$1;
.super Ljava/lang/Object;
.source "EditorialBucketContent.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/EditorialBucketContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EditorialBucketContent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/EditorialBucketContent;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent$1;->this$0:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent$1;->this$0:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget-object v0, v0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 46
    :cond_11
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EditorialBucketContent$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
