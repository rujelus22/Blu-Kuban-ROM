.class public Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$1;,
        Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

.field private mErrorView:Landroid/view/View;

.field private mInitialized:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Landroid/view/View;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->showToast(I)V

    return-void
.end method

.method private static createNotificationSettingsSingleton(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 3
    .parameter "setting"

    .prologue
    .line 191
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    .line 192
    .local v0, settings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->addSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    return-object v1
.end method

.method private initialize()V
    .registers 7

    .prologue
    .line 133
    const/4 v2, 0x0

    .local v2, position:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getCount()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 134
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, item:Ljava/lang/Object;
    instance-of v4, v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    if-eqz v4, :cond_22

    move-object v3, v1

    .line 136
    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .line 137
    .local v3, setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getEnabled()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 133
    .end local v3           #setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 139
    :cond_22
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1f

    .line 142
    .end local v1           #item:Ljava/lang/Object;
    :cond_29
    return-void
.end method

.method private showToast(I)V
    .registers 4
    .parameter "text"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
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
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 85
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    new-instance v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    return-object v1

    :cond_21
    move v1, v2

    .line 85
    goto :goto_11
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    if-eqz p3, :cond_a

    .line 56
    const-string v1, "initialized"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mInitialized:Z

    .line 58
    :cond_a
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 60
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 62
    new-instance v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    .line 63
    const v1, 0x7f0d00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mLoadingView:Landroid/view/View;

    .line 64
    const v1, 0x7f0d00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mErrorView:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 67
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 120
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, item:Ljava/lang/Object;
    instance-of v4, v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    if-eqz v4, :cond_28

    move-object v2, v1

    .line 122
    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .line 123
    .local v2, setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v4

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->createNotificationSettingsSingleton(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v3

    .line 125
    .local v3, settings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/plus/service/EsService;->changeNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/lang/Integer;

    .line 127
    .end local v2           #setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .end local v3           #settings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    :cond_28
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 5
    .parameter
    .parameter "settings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;>;"
    const/16 v0, 0x8

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    .line 96
    if-eqz p2, :cond_13

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mInitialized:Z

    if-nez v1, :cond_13

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->initialize()V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mInitialized:Z

    .line 100
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mErrorView:Landroid/view/View;

    if-nez p2, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;>;"
    const/16 v2, 0x8

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 164
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "initialized"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mInitialized:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method
