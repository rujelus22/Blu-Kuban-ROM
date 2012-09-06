.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsInstalledTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBulkDetails;",
        ">;",
        "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

.field private mInstalledView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mMyAppsList:Landroid/widget/ListView;

.field private mOwnedDocIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V
    .registers 14
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "detailsOpener"

    .prologue
    .line 49
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V

    .line 39
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    .line 53
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090007

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, p1

    move-object v5, p2

    move-object v6, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;ZLcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->onDataChanged()V

    .line 61
    :cond_3d
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public bucketsChanged()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    .line 164
    :cond_7
    return-void
.end method

.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .registers 3
    .parameter "view"

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 5
    .parameter "backendId"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    if-nez v0, :cond_12

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    .line 109
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDocuments()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    if-nez v0, :cond_f

    .line 142
    :goto_e
    return-void

    .line 127
    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->addDocs(Ljava/util/Collection;)V

    .line 129
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    if-nez v1, :cond_4d

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    .line 133
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 135
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mUseTwoColumnLayout:Z

    if-eqz v1, :cond_48

    .line 136
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 138
    :cond_48
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    .line 141
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->syncViewToState()V

    goto :goto_e
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_8

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_e

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    .line 175
    :goto_d
    return-void

    .line 173
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    goto :goto_d
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 2
    .parameter "library"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    .line 180
    return-void
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method protected retryFromError()V
    .registers 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->clearState()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    .line 116
    return-void
.end method
