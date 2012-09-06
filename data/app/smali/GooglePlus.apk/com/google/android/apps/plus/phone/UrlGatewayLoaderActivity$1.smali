.class Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;
.super Ljava/lang/Object;
.source "UrlGatewayLoaderActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mGaiaId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getContext()Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v2, v2, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v4, v4, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mGaiaId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
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
    .line 50
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_11

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    .line 53
    :cond_11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1$1;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 65
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
