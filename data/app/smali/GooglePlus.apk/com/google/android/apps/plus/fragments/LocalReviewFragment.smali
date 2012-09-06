.class public Lcom/google/android/apps/plus/fragments/LocalReviewFragment;
.super Lcom/google/android/apps/plus/phone/HostedFragment;
.source "LocalReviewFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/HostedFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "person_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 49
    return-void
.end method

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
    .line 56
    const-string v0, "LocalReviewFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    const-string v0, "LocalReviewFragment"

    const-string v1, "Loader<ProfileAndContactData> onCreateLoader()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_10
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "person_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/ProfileLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 3
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
    .line 69
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    check-cast p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

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
    .line 77
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 36
    const-string v0, "person_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/LocalReviewFragment;->mPersonId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public recordNavigationAction()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method
