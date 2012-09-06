.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsLibraryTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

.field private final mIsTwoColumnLayout:Z

.field private mLibraryView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mListView:Landroid/widget/ListView;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 14
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "detailsOpener"
    .parameter "toc"
    .parameter "accountLibrary"

    .prologue
    .line 44
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    .line 46
    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 47
    iput-object p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    .line 48
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    .line 51
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    .line 53
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    if-nez v0, :cond_30

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->showAccountSwitcher()V

    .line 56
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->requestData()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private configureNoAppsUi()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    .line 101
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 103
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-boolean v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    if-eqz v5, :cond_46

    .line 104
    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    .line 110
    :goto_14
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080112

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, appBrowsing:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-nez v5, :cond_4e

    const/4 v2, 0x0

    .line 113
    .local v2, appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :goto_22
    if-nez v2, :cond_56

    .line 114
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_27
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080113

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, gamesBrowsing:Landroid/view/View;
    sget-object v5, Lcom/google/android/finsky/config/G;->gamesBrowseUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    .local v4, gamesUrl:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-eqz v5, :cond_42

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 130
    :cond_42
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_45
    return-void

    .line 106
    .end local v1           #appBrowsing:Landroid/view/View;
    .end local v2           #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v3           #gamesBrowsing:Landroid/view/View;
    .end local v4           #gamesUrl:Ljava/lang/String;
    :cond_46
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    goto :goto_14

    .line 111
    .restart local v1       #appBrowsing:Landroid/view/View;
    :cond_4e
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v2

    goto :goto_22

    .line 116
    .restart local v2       #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_56
    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;

    invoke-direct {v5, p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    .line 132
    .restart local v3       #gamesBrowsing:Landroid/view/View;
    .restart local v4       #gamesUrl:Ljava/lang/String;
    :cond_5f
    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;

    invoke-direct {v5, p0, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_45
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 154
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v0

    .line 155
    .local v0, appsToken:[B
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v4, 0x3

    sget-object v5, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, libraryUrl:Ljava/lang/String;
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v3, v2, v6}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    .line 158
    .local v1, dfeList:Lcom/google/android/finsky/api/model/DfeList;
    sget-object v3, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/api/model/DfeList;->filterDocId(Ljava/lang/String;)V

    .line 159
    return-object v1
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .registers 3
    .parameter "view"

    .prologue
    .line 164
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 5
    .parameter "backendId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    if-nez v0, :cond_12

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 71
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    if-nez v0, :cond_40

    .line 72
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-eqz v0, :cond_2c

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 80
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->configureNoAppsUi()V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->restoreTabSelection()V

    .line 84
    :cond_40
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->syncViewToState()V

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->onDataChanged()V

    .line 86
    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 184
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_8

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_d

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 188
    :cond_d
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 4
    .parameter "library"

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 193
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->requestData()V

    .line 195
    :cond_17
    return-void
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->clearState()V

    .line 146
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V

    .line 151
    return-void
.end method

.method protected retryFromError()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->resetItems()V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 98
    return-void
.end method
