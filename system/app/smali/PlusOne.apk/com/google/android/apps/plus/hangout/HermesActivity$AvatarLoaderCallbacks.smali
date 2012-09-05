.class Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarLoaderCallbacks"
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
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter "loaderId"
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
    .line 170
    new-instance v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

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
    .parameter "avatar"
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
    .line 178
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->setAvatarBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$800(Lcom/google/android/apps/plus/hangout/HermesActivity;Landroid/graphics/Bitmap;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

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
    .line 187
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
