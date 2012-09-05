.class Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, loader:Landroid/support/v4/content/AsyncTaskLoader;,"Landroid/support/v4/content/AsyncTaskLoader<Landroid/graphics/Bitmap;>;"
    packed-switch p1, :pswitch_data_12

    .line 342
    :goto_4
    return-object v0

    .line 313
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;

    .end local v0           #loader:Landroid/support/v4/content/AsyncTaskLoader;,"Landroid/support/v4/content/AsyncTaskLoader<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$1;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;Landroid/content/Context;)V

    .restart local v0       #loader:Landroid/support/v4/content/AsyncTaskLoader;,"Landroid/support/v4/content/AsyncTaskLoader<Landroid/graphics/Bitmap;>;"
    goto :goto_4

    .line 311
    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 370
    :goto_7
    return-void

    .line 353
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1002(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 355
    .local v0, mainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 351
    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 383
    :goto_7
    return-void

    .line 379
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 377
    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method
