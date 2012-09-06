.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;
.super Ljava/lang/Object;
.source "HostedProfileFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

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
    .line 265
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    const-string v0, "HostedProfileFragment"

    const-string v1, "Loader<ProfileAndContactData> onCreateLoader()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_10
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "person_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/ProfileLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 14
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 278
    const-string v7, "HostedProfileFragment"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 279
    const-string v7, "HostedProfileFragment"

    const-string v8, "Loader<ProfileAndContactData> onLoadFinished()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_12
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactLoaderActive:Z
    invoke-static {v7, v9}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$302(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 283
    iget v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_25

    iget v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_25

    iget v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    if-ne v7, v10, :cond_31

    :cond_25
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$400(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Z

    move-result v7

    if-eqz v7, :cond_5f

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-nez v7, :cond_5f

    .line 287
    :cond_31
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iput-boolean v10, v7, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mError:Z

    .line 288
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z
    invoke-static {v7, v9}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 289
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    if-nez v7, :cond_5b

    const v7, 0x7f080203

    :goto_49
    invoke-virtual {v9, v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->showError(Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 293
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    .line 366
    :cond_5a
    :goto_5a
    return-void

    .line 289
    :cond_5b
    const v7, 0x7f080301

    goto :goto_49

    .line 297
    :cond_5f
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iput-boolean v9, v7, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mError:Z

    .line 298
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setProfileData(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 299
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v8

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsPlusPage:Z
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$802(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    .line 303
    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-eqz v7, :cond_ea

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v7, :cond_ea

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    if-eqz v7, :cond_ea

    .line 306
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v8, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/Locations;->locationMapUrl:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setPlacesMapUrl(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/lang/String;)V

    .line 312
    :goto_9a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 314
    .local v1, domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-eqz v7, :cond_f6

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-eqz v7, :cond_f6

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    if-eqz v7, :cond_f6

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/Links;->link:Ljava/util/List;

    if-eqz v7, :cond_f6

    .line 318
    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    iget-object v4, v7, Lcom/google/api/services/plusi/model/Links;->link:Ljava/util/List;

    .line 319
    .local v4, link:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ProfilesLink;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 320
    .local v5, linkCount:I
    if-lez v5, :cond_f6

    .line 321
    const/4 v2, 0x0

    .local v2, i:I
    :goto_ca
    if-ge v2, v5, :cond_f6

    .line 323
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/services/plusi/model/ProfilesLink;

    iget-object v6, v7, Lcom/google/api/services/plusi/model/ProfilesLink;->url:Ljava/lang/String;

    .line 324
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_e7

    .line 325
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, domain:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e7

    .line 327
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v0           #domain:Ljava/lang/String;
    :cond_e7
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 308
    .end local v1           #domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #link:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ProfilesLink;>;"
    .end local v5           #linkCount:I
    .end local v6           #url:Ljava/lang/String;
    :cond_ea
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    const/4 v8, 0x0

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setPlacesMapUrl(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/lang/String;)V

    .line 309
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z
    invoke-static {v7, v9}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z

    goto :goto_9a

    .line 337
    .restart local v1       #domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f6
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isLocalPlusPage()Z

    move-result v7

    if-eqz v7, :cond_125

    .line 338
    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getHomepageUrl(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/PlacePageLink;

    move-result-object v3

    .line 339
    .local v3, link:Lcom/google/api/services/plusi/model/PlacePageLink;
    if-eqz v3, :cond_125

    iget-object v7, v3, Lcom/google/api/services/plusi/model/PlacePageLink;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_125

    .line 340
    iget-object v7, v3, Lcom/google/api/services/plusi/model/PlacePageLink;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0       #domain:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_125

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v0           #domain:Ljava/lang/String;
    .end local v3           #link:Lcom/google/api/services/plusi/model/PlacePageLink;
    :cond_125
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_135

    .line 348
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setFaviconDomains(Ljava/util/ArrayList;)V

    .line 351
    :cond_135
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 352
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    .line 355
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->onAsyncData()V

    .line 357
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->isRefreshNeeded(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)Z
    invoke-static {v7, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1100(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 358
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->refreshProfile()V

    .line 362
    :cond_151
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    move-result-object v7

    if-eqz v7, :cond_5a

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    move-result-object v7

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mProfileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->access$1300(Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;)Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 364
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    move-result-object v7

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->mProfileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->access$1300(Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;)Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->requery()Z

    goto/16 :goto_5a
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    check-cast p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

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
    .line 371
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    return-void
.end method
