.class public Lcom/google/android/finsky/layout/NativeActionBar;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# static fields
.field private static final ICS_OR_NEWER:Z


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentBackendId:I

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShareItem:Landroid/view/MenuItem;

.field private mUseActionBarTabs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->clearSearchIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/ActionBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private clearSearchIfNecessary()V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_5

    .line 215
    :cond_4
    :goto_4
    return-void

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 212
    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_4
.end method

.method private configureExtendedShare()V
    .registers 4

    .prologue
    .line 238
    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_32

    .line 239
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 240
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_32

    .line 241
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    .line 243
    .local v0, actionProvider:Landroid/widget/ShareActionProvider;
    const-string v2, "share_history.xml"

    invoke-virtual {v0, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 245
    new-instance v2, Lcom/google/android/finsky/layout/NativeActionBar$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/layout/NativeActionBar$2;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v2}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 255
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 259
    .end local v0           #actionProvider:Landroid/widget/ShareActionProvider;
    .end local v1           #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_32
    return-void
.end method

.method private setupCorpusIcon()V
    .registers 8

    .prologue
    .line 272
    sget-boolean v4, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-nez v4, :cond_5

    .line 293
    :cond_4
    :goto_4
    return-void

    .line 276
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 277
    .local v3, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    .line 279
    .local v2, bl:Lcom/google/android/finsky/utils/BitmapLoader;
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/finsky/layout/NativeActionBar$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/layout/NativeActionBar$3;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    .line 287
    .local v1, bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 288
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 290
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method private syncActionBar()V
    .registers 3

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDetailsPageMenuItem(Landroid/view/MenuItem;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_17

    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_31

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    iget v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 233
    :cond_31
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->configureExtendedShare()V

    .line 234
    return-void
.end method

.method private syncDetailsPageMenuItem(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 262
    if-eqz p1, :cond_f

    .line 263
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    .line 264
    .local v0, currentPageType:I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    .line 265
    .local v1, isDetailsPage:Z
    :goto_c
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 267
    .end local v0           #currentPageType:I
    .end local v1           #isDetailsPage:Z
    :cond_f
    return-void

    .line 264
    .restart local v0       #currentPageType:I
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private syncDisplayTitle()V
    .registers 5

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 121
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0700cd

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 122
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 123
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_2f

    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_2f

    .line 124
    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 125
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_2f

    .line 126
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_2f
    :goto_2f
    return-void

    .line 130
    :cond_30
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .registers 6
    .parameter "text"
    .parameter "tabListener"

    .prologue
    .line 320
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    if-nez v1, :cond_5

    .line 350
    :goto_4
    return-void

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 325
    .local v0, newTab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1b

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 330
    :cond_1b
    new-instance v1, Lcom/google/android/finsky/layout/NativeActionBar$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/NativeActionBar$4;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 347
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 348
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 349
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_4
.end method

.method public clearTabs()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 360
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 362
    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 9
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 142
    const v2, 0x7f08000d

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    .line 146
    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v2, :cond_6b

    .line 147
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, context:Landroid/content/Context;
    :goto_14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 154
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 156
    const v2, 0x7f08000c

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    .line 157
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->configureExtendedShare()V

    .line 160
    const v2, 0x7f080233

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 162
    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 164
    .local v1, searchManager:Landroid/app/SearchManager;
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 166
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-nez v2, :cond_6a

    .line 167
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    :cond_6a
    return-void

    .line 149
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :cond_6b
    move-object v0, p1

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_14
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrentBackendId()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_5

    .line 192
    :goto_4
    return-void

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_4
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .registers 6
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 91
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/layout/NativeActionBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/NativeActionBar$1;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 99
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    .line 101
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_1d

    .line 306
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 312
    :goto_15
    const/4 v0, 0x1

    .line 315
    :goto_16
    return v0

    .line 309
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_15

    .line 315
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setSelectedTab(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 355
    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 175
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 176
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_4c

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f070186

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

    .line 181
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

    .line 186
    .end local v1           #intent:Landroid/content/Intent;
    :goto_4b
    return-void

    .line 184
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
    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 116
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 117
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backendId"

    .prologue
    .line 105
    iput p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    .line 107
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 108
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 109
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 110
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_f

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 301
    :cond_f
    return-void
.end method
