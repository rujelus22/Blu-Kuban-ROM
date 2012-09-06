.class Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;
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
        "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
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
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

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
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 74
    new-instance v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getContext()Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v2, v2, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 76
    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    #calls: Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getContext()Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v2, v2, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v4, v4, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/ProfileLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    goto :goto_1f
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    if-eqz p2, :cond_17

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget v0, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileIdValidated:Z

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v1, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->this$0:Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    iget-object v1, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->gaiaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mGaiaId:Ljava/lang/String;

    .line 89
    :cond_17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2$1;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void

    .line 85
    :cond_25
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    check-cast p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

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
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    return-void
.end method
