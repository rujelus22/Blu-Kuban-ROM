.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;
.super Ljava/lang/Object;
.source "HostedProfileFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
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
    .line 419
    const-string v1, "HostedProfileFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 420
    const-string v1, "HostedProfileFragment"

    const-string v2, "LoaderCallbacks<Bitmap> onCreateLoader() -- mPlacesMapLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_10
    const-string v1, "map_url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 424
    const/4 v0, 0x0

    .line 429
    :cond_1d
    if-eqz v0, :cond_4a

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_4a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 435
    new-instance v1, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    return-object v1
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
    .line 443
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 444
    const-string v0, "HostedProfileFragment"

    const-string v1, "LoaderCallbacks<Bitmap> onLoadFinished() -- mPlacesMapLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setLocationMapBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 451
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
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
    .line 456
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
