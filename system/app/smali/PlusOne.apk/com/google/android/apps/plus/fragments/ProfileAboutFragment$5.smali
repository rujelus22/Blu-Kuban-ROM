.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;
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
        "Landroid/database/Cursor;",
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
    .line 1122
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

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
    .line 1129
    new-instance v0, Lcom/google/android/apps/plus/fragments/FaviconLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

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

    .line 1138
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mLoadingFavicons:Z
    invoke-static {v0, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1802(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1139
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1140
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$902(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1142
    :cond_18
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1144
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1147
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1148
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->notifyDataSetChanged()V

    .line 1150
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    .line 1151
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1122
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 1156
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
