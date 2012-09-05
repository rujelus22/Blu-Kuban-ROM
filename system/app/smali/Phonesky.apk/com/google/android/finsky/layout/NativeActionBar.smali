.class public Lcom/google/android/finsky/layout/NativeActionBar;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# static fields
.field private static final ICS_OR_NEWER:Z


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mCurrentBackendId:I

.field private mExploreItem:Landroid/view/MenuItem;

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShareItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->clearSearchIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method private clearSearchIfNecessary()V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_5

    .line 211
    :cond_4
    :goto_4
    return-void

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-eq v0, v1, :cond_4

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 208
    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_4
.end method

.method private setupCorpusIcon()V
    .registers 3

    .prologue
    .line 248
    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 251
    :cond_c
    return-void
.end method

.method private syncActionBar()V
    .registers 3

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDetailsPageMenuItem(Landroid/view/MenuItem;)V

    .line 219
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mExploreItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDetailsPageMenuItem(Landroid/view/MenuItem;)V

    .line 223
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2a

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    :cond_2a
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_44

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    iget v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 233
    :cond_44
    return-void
.end method

.method private syncDetailsPageMenuItem(Landroid/view/MenuItem;)V
    .registers 6
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x0

    .line 236
    if-eqz p1, :cond_17

    .line 237
    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    .line 238
    .local v0, currentPageType:Lcom/google/android/finsky/navigationmanager/NavigationState;
    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v0, v3, :cond_18

    const/4 v1, 0x1

    .line 239
    .local v1, isDetailsPage:Z
    :goto_e
    if-eqz v1, :cond_11

    const/4 v2, 0x2

    :cond_11
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    .end local v0           #currentPageType:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v1           #isDetailsPage:Z
    :cond_17
    return-void

    .restart local v0       #currentPageType:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :cond_18
    move v1, v2

    .line 238
    goto :goto_e
.end method

.method private syncDisplayTitle()V
    .registers 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0700c0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 105
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 106
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_2f

    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_2f

    .line 107
    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 108
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_2f

    .line 109
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_2f
    :goto_2f
    return-void

    .line 113
    :cond_30
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 9
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 124
    const v2, 0x7f080009

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    .line 128
    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v2, :cond_76

    .line 129
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    :goto_14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 136
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 138
    const v2, 0x7f080008

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    .line 139
    const v2, 0x7f08000a

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mExploreItem:Landroid/view/MenuItem;

    .line 141
    const v2, 0x7f0801a9

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 143
    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 145
    .local v1, searchManager:Landroid/app/SearchManager;
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 147
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-nez v2, :cond_75

    .line 148
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mExploreItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    :cond_75
    return-void

    .line 131
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :cond_76
    move-object v0, p1

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_14
.end method

.method public exploreButtonClicked(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_21

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    const-string v2, "DOC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    :goto_20
    return-void

    .line 181
    :cond_21
    const-string v0, "Tried to explore an item but there is no document active"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrentBackendId()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_5

    .line 189
    :goto_4
    return-void

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_4
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .registers 5
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 75
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 76
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/NativeActionBar$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/NativeActionBar$1;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 84
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_1d

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 270
    :goto_15
    const/4 v0, 0x1

    .line 273
    :goto_16
    return v0

    .line 267
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_15

    .line 273
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 158
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_4c

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f07014b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v6, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v1           #intent:Landroid/content/Intent;
    :goto_4b
    return-void

    .line 166
    :cond_4c
    const-string v2, "Tried to share an item but there is no document active"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 99
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 100
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backendId"

    .prologue
    .line 88
    iput p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    .line 90
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 93
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_f

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 259
    :cond_f
    return-void
.end method
