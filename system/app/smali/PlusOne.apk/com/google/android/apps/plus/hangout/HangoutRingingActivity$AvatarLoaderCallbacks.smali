.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

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
    .line 610
    new-instance v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

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
    .line 619
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setAvatarBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Landroid/graphics/Bitmap;)V

    .line 620
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

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
    .line 628
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
