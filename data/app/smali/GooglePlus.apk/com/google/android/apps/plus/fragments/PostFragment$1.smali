.class Lcom/google/android/apps/plus/fragments/PostFragment$1;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

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
    .line 368
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1500(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostFragment$1;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .registers 7
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
    .line 377
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;>;"
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1502(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 378
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 379
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1600(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_a

    .line 381
    .end local v1           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_1c
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
    .line 389
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;>;"
    return-void
.end method
