.class Lcom/google/android/apps/plus/fragments/ShareFragment$8;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/apps/plus/api/MediaRef;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1886
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1879
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;>;"
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v1, 0x0

    .line 1895
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_28

    move v3, v1

    .line 1896
    .local v3, reqestedRefCount:I
    :goto_a
    if-nez p2, :cond_33

    .line 1897
    .local v1, loadedRefCount:I
    :goto_c
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2902(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1898
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1899
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    invoke-static {v4, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$3000(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_16

    .line 1895
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loadedRefCount:I
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #reqestedRefCount:I
    :cond_28
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_a

    .line 1896
    .restart local v3       #reqestedRefCount:I
    :cond_33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_c

    .line 1901
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #loadedRefCount:I
    :cond_38
    if-ge v1, v3, :cond_4b

    .line 1903
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f080189

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1907
    :cond_4b
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2500(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    .line 1908
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1916
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;>;"
    return-void
.end method
