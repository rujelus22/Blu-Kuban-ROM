.class Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;
.super Ljava/lang/Object;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

.field final synthetic val$index:I

.field final synthetic val$numImagesToLoad:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iput p2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->val$index:I

    iput p3, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->val$numImagesToLoad:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 6
    .parameter "bitmapContainer"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mInFlightRequests:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->val$index:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2f

    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$204(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->val$numImagesToLoad:I

    if-ne v1, v2, :cond_2e

    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mContext:Landroid/content/Context;

    const v3, 0x7f07019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 158
    :cond_2e
    :goto_2e
    return-void

    .line 156
    :cond_2f
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$300(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->val$index:I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2e
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$3;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
