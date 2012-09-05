.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;
.super Ljava/lang/Object;
.source "ProfileAboutFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

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
    .line 1088
    const-string v1, "map_url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1090
    const/4 v0, 0x0

    .line 1095
    :cond_d
    if-eqz v0, :cond_3a

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    :cond_3a
    new-instance v1, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

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
    .line 1108
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mMapLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1702(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$802(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1110
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1111
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->notifyDataSetChanged()V

    .line 1113
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    .line 1114
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1081
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

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
    .line 1119
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
