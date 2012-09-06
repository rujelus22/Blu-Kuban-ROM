.class public Lcom/google/android/apps/plus/fragments/CheckinListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "CheckinListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;,
        Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;,
        Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;,
        Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/PlacesAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;"
    }
.end annotation


# static fields
.field private static final ITEM_NO_LOCATION:Ljava/lang/Object;


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field private mLocationListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;

.field private mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

.field private mOnUpdateMenuListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;

.field private mQuery:Ljava/lang/String;

.field private mSearchBar:Landroid/view/View;

.field private mSearchMode:Z

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->ITEM_NO_LOCATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 102
    new-instance v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;

    .line 148
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)Lcom/google/android/apps/plus/api/LocationQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/api/LocationQuery;)Lcom/google/android/apps/plus/api/LocationQuery;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private addLocationListener()V
    .registers 9

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_20

    .line 497
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v6, :cond_33

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v6

    :goto_19
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$CheckinLocationListener;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 502
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    .line 503
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1bfb7a8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 507
    :goto_32
    return-void

    .line 497
    :cond_33
    const/4 v6, 0x0

    goto :goto_19

    .line 505
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->init()V

    goto :goto_32
.end method

.method private doSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v0, :cond_44

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 458
    new-instance v0, Lcom/google/android/apps/plus/api/LocationQuery;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    .line 463
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 471
    :cond_44
    return-void

    .line 460
    :cond_45
    new-instance v0, Lcom/google/android/apps/plus/api/LocationQuery;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    goto :goto_1c
.end method

.method private isSearchWithNoEntry()Z
    .registers 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 518
    :cond_c
    return-void
.end method

.method private setupAndShowEmptyView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->isSearchWithNoEntry()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 541
    const v0, 0x7f0801bd

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 545
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showEmptyView(Landroid/view/View;)V

    .line 546
    return-void

    .line 543
    :cond_10
    const v0, 0x7f0801b1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_c
.end method

.method private showPlacesOnly()Z
    .registers 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "places_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "text"

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->isSearchWithNoEntry()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 528
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setupAndShowEmptyView(Landroid/view/View;)V

    .line 532
    :goto_9
    return-void

    .line 530
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private updateSearchBar()V
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mOnUpdateMenuListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;

    if-eqz v0, :cond_9

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mOnUpdateMenuListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;->onUpdateMenu()V

    .line 489
    :cond_9
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_b
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v0, v1

    goto :goto_b
.end method

.method public hasLocation()Z
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 163
    if-eqz p1, :cond_3f

    .line 164
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/LocationQuery;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    .line 165
    const-string v2, "search_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    .line 166
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v2, :cond_3e

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 178
    :cond_3e
    :goto_3e
    return-void

    .line 172
    :cond_3f
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 173
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 175
    .local v1, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    new-instance v2, Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    goto :goto_3e
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
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
    const/4 v5, 0x0

    .line 307
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->isSearchWithNoEntry()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v7, "no_location_stream_key"

    .line 309
    .local v7, queryKey:Ljava/lang/String;
    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/content/EsProvider;->buildLocationQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 310
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showPlacesOnly()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v4, "name IS NOT NULL"

    .line 311
    .local v4, where:Ljava/lang/String;
    :goto_17
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/phone/PlacesAdapter$LocationQuery;->PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 307
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #queryKey:Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #queryKey:Ljava/lang/String;
    :cond_2b
    move-object v4, v5

    .line 310
    goto :goto_17
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 199
    const v6, 0x7f030016

    invoke-super {p0, p1, p2, p3, v6}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v4

    .line 202
    .local v4, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showPlacesOnly()Z

    move-result v6

    if-nez v6, :cond_5a

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    if-nez v6, :cond_5a

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f030066

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v6, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, header:Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 206
    .local v2, icon:Landroid/widget/ImageView;
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, title:Landroid/widget/TextView;
    const v6, 0x1020005

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    .local v1, hint:Landroid/widget/TextView;
    const v6, 0x7f0200e6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    const v6, 0x7f0801e4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 210
    const v6, 0x7f0801e5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    sget-object v8, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->ITEM_NO_LOCATION:Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-virtual {v6, v0, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 215
    .end local v0           #header:Landroid/view/View;
    .end local v1           #hint:Landroid/widget/TextView;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_5a
    new-instance v6, Lcom/google/android/apps/plus/phone/PlacesAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/android/apps/plus/phone/PlacesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 219
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    const v6, 0x7f090071

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    .line 227
    if-eqz p3, :cond_8e

    .line 228
    const-string v6, "search_bar_visible"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 229
    .local v5, visible:Z
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    if-eqz v5, :cond_b4

    move v6, v7

    :goto_8b
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .end local v5           #visible:Z
    :cond_8e
    const v6, 0x7f09004c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/view/View;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 235
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const v7, 0x7f080216

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryHint(I)V

    .line 236
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v6, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 238
    const v6, 0x7f0801b1

    invoke-virtual {p0, v4, v6}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 241
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 242
    return-object v4

    .line 229
    .restart local v5       #visible:Z
    :cond_b4
    const/16 v6, 0x8

    goto :goto_8b
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 345
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 346
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->doSearch()V

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, item:Ljava/lang/Object;
    if-nez v3, :cond_7

    .line 385
    :cond_6
    :goto_6
    return-void

    .line 363
    :cond_7
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PlacesAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/PlacesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 364
    .local v1, cursor:Landroid/database/Cursor;
    sget-object v6, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->ITEM_NO_LOCATION:Ljava/lang/Object;

    if-ne v3, v6, :cond_43

    .line 365
    const/4 v4, 0x0

    .line 372
    .local v4, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 373
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 374
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 375
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v6, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->startActivity(Landroid/content/Intent;)V

    .line 380
    :cond_31
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v5, result:Landroid/content/Intent;
    const-string v6, "location"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 382
    const/4 v6, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 366
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v5           #result:Landroid/content/Intent;
    :cond_43
    if-ne v3, v1, :cond_6

    .line 367
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PlacesAdapter;

    invoke-virtual {v6, v1}, Lcom/google/android/apps/plus/phone/PlacesAdapter;->getLocation(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    .restart local v4       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    goto :goto_14
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
    .line 320
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PlacesAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PlacesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 322
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1a

    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showContent(Landroid/view/View;)V

    .line 330
    :goto_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->updateSearchBar()V

    .line 331
    return-void

    .line 324
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_16

    .line 327
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setupAndShowEmptyView(Landroid/view/View;)V

    goto :goto_16
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 338
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 282
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->removeLocationListener()V

    .line 283
    return-void
.end method

.method public onQueryClose()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 392
    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->doSearch()V

    .line 395
    return-void

    .line 392
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 402
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const v2, 0x7f0800c4

    .line 250
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 255
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PlacesAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PlacesAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_42

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 272
    :cond_42
    :goto_42
    return-void

    .line 263
    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-nez v1, :cond_59

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801bb

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 270
    :goto_55
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->addLocationListener()V

    goto :goto_42

    .line 267
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->showProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v0, :cond_15

    .line 293
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    const-string v0, "search_mode"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    :cond_15
    const-string v1, "search_bar_visible"

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 297
    :cond_2b
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public setOnUpdateMenuListener(Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;)V
    .registers 2
    .parameter "onUpdateMenuListener"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mOnUpdateMenuListener:Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;

    .line 480
    return-void
.end method

.method public setSearchMode(Z)V
    .registers 4
    .parameter "searchMode"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchMode:Z

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 421
    if-eqz p1, :cond_f

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_e
    :goto_e
    return-void

    .line 424
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mSearchBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method
