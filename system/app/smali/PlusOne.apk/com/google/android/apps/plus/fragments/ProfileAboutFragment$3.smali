.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;
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
    .line 1053
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
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
    .line 1060
    new-instance v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AvatarLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V
    .registers 4
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
    .line 1068
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setAvatarBitmap(Landroid/graphics/Bitmap;)V

    .line 1069
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

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
    .line 1077
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
