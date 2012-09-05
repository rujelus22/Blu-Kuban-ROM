.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;
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
        "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
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
    .line 975
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

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
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const-string v3, "person_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProfileLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 13
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 993
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    if-nez v6, :cond_29

    .line 994
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 995
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mError:Z
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1302(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 996
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateView()V

    .line 997
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    .line 1042
    :goto_1d
    return-void

    .line 999
    :cond_1e
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1000
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->refresh()V

    goto :goto_1d

    .line 1005
    :cond_29
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v6, v8}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1006
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    if-eqz v6, :cond_48

    .line 1007
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v5

    .line 1008
    .local v5, profileType:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    if-eqz v5, :cond_8a

    sget-object v6, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v5, v6}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    move v6, v7

    :goto_45
    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v9, v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1011
    .end local v5           #profileType:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :cond_48
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->setProfileData(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 1012
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1013
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    if-eqz v6, :cond_ca

    .line 1014
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mError:Z
    invoke-static {v6, v8}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1302(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1015
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iget-object v7, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrl()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setPlacesMapUrl(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1600(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/lang/String;)V

    .line 1016
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLinkCount()I

    move-result v2

    .line 1017
    .local v2, linkCount:I
    if-lez v2, :cond_96

    .line 1018
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1019
    .local v0, domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_78
    if-ge v1, v2, :cond_8c

    .line 1020
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-virtual {v6, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .end local v0           #domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #linkCount:I
    .restart local v5       #profileType:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :cond_8a
    move v6, v8

    .line 1008
    goto :goto_45

    .line 1022
    .end local v5           #profileType:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .restart local v0       #domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #linkCount:I
    :cond_8c
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setFaviconDomains(Ljava/util/ArrayList;)V

    .line 1030
    .end local v0           #domains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #linkCount:I
    :cond_96
    :goto_96
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateView()V

    .line 1031
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1034
    .local v3, now:J
    iget-wide v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contactUpdateTime:J

    sub-long v6, v3, v6

    const-wide/32 v8, 0x37d8e0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_be

    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    if-eqz v6, :cond_be

    iget-wide v6, p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileUpdateTime:J

    sub-long v6, v3, v6

    const-wide/32 v8, 0x2bf20

    cmp-long v6, v6, v8

    if-lez v6, :cond_c3

    .line 1037
    :cond_be
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->refresh()V

    .line 1041
    :cond_c3
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->onAsyncData()V

    goto/16 :goto_1d

    .line 1026
    .end local v3           #now:J
    :cond_ca
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mError:Z
    invoke-static {v6, v8}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1302(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    .line 1027
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    const/4 v8, 0x0

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setPlacesMapUrl(Ljava/lang/String;)V
    invoke-static {v6, v8}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1600(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/lang/String;)V

    .line 1028
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mMapLoaded:Z
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1702(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z

    goto :goto_96
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 975
    check-cast p2, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

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
    .line 1047
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;>;"
    return-void
.end method
