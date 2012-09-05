.class Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    invoke-direct {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 328
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030097

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 331
    .local v2, photoPreview:Landroid/view/View;
    const v3, 0x7f0d017a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 334
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;->forceLoad()V

    .line 321
    return-void
.end method
