.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;
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
        "Landroid/database/Cursor;",
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
    .line 459
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 467
    const-string v0, "HostedProfileFragment"

    const-string v1, "LoaderCallbacks<Cursor> onCreateLoader() -- mFaviconLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1402(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 470
    new-instance v0, Lcom/google/android/apps/plus/fragments/FaviconLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "domains"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/FaviconLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    .line 479
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 480
    const-string v0, "HostedProfileFragment"

    const-string v1, "LoaderCallbacks<Cursor> onLoadFinished() -- mFaviconLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_23

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 487
    :cond_23
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 489
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_29

    .line 493
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setFavicons(Ljava/util/HashMap;)V

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z
    invoke-static {v0, v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1402(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 497
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
