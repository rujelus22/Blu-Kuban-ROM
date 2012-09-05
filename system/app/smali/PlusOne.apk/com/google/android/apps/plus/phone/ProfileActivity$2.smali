.class Lcom/google/android/apps/plus/phone/ProfileActivity$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ProfileActivity;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    new-instance v0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const-string v3, "person_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Integer;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_d
    #setter for: Lcom/google/android/apps/plus/phone/ProfileActivity;->mIsHermesEnabled:Z
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->access$002(Lcom/google/android/apps/plus/phone/ProfileActivity;Z)Z

    .line 945
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    #calls: Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->access$100(Lcom/google/android/apps/plus/phone/ProfileActivity;)V

    .line 946
    return-void

    .line 943
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ProfileActivity$2;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Integer;)V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Integer;>;"
    return-void
.end method
