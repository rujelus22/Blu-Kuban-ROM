.class public Lcom/google/android/finsky/layout/LegacyActionBar;
.super Landroid/widget/LinearLayout;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBreadcrumb:Landroid/widget/TextView;

.field private mCorpusChevronIcon:Landroid/widget/ImageView;

.field private mCorpusIcon:Landroid/widget/ImageView;

.field private mCorpusUpPack:Landroid/view/View;

.field private mCurrentBackendId:I

.field private mExploreButton:Landroid/widget/ImageButton;

.field private final mGoUpClickListener:Landroid/view/View$OnClickListener;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/google/android/finsky/layout/LegacyActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$1;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    .line 94
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupBackground()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method private setupBackground()V
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method private setupCorpusIcon()V
    .registers 3

    .prologue
    .line 207
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    .line 212
    return-void
.end method

.method private setupExploreButton()V
    .registers 3

    .prologue
    .line 188
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mExploreButton:Landroid/widget/ImageButton;

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mExploreButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$4;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private setupSearchButton()V
    .registers 3

    .prologue
    .line 172
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$3;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method private setupShareButton()V
    .registers 3

    .prologue
    .line 215
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$5;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method private syncActionBar()V
    .registers 9

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 228
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v1

    .line 229
    .local v1, currentPageType:Lcom/google/android/finsky/navigationmanager/NavigationState;
    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v1, v3, :cond_90

    const/4 v2, 0x1

    .line 230
    .local v2, isDetailsPage:Z
    :goto_f
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_93

    move v3, v4

    :goto_14
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mExploreButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v1, v3, :cond_95

    sget-object v3, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_95

    move v3, v4

    :goto_2c
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v0

    .line 236
    .local v0, canGoUp:Z
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    move v3, v4

    :goto_3a
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 238
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 240
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v3

    if-eqz v3, :cond_99

    move v3, v4

    :goto_52
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v7

    if-eqz v7, :cond_60

    move v5, v4

    :cond_60
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 245
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 246
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 247
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    const v5, 0x7f030001

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v4, 0x7f070194

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 252
    :cond_8f
    return-void

    .end local v0           #canGoUp:Z
    .end local v2           #isDetailsPage:Z
    :cond_90
    move v2, v4

    .line 229
    goto/16 :goto_f

    .restart local v2       #isDetailsPage:Z
    :cond_93
    move v3, v5

    .line 230
    goto :goto_14

    :cond_95
    move v3, v5

    .line 231
    goto :goto_2c

    .restart local v0       #canGoUp:Z
    :cond_97
    move v3, v6

    .line 236
    goto :goto_3a

    :cond_99
    move v3, v6

    .line 240
    goto :goto_52
.end method

.method private syncDisplayTitle()V
    .registers 5

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v3, 0x7f0700c0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 153
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_2f

    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_2f

    .line 154
    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 155
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_2f

    .line 156
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 164
    return-void

    .line 160
    :cond_3c
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 3
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 256
    return-void
.end method

.method public exploreButtonClicked(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 290
    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBackendId()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 275
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .registers 5
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 113
    iput-object p2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    .line 114
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupSearchButton()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupShareButton()V

    .line 118
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupCorpusIcon()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupExploreButton()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$2;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 130
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 260
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 261
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_4c

    .line 262
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 264
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

    .line 266
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

    .line 271
    .end local v1           #intent:Landroid/content/Intent;
    :goto_4b
    return-void

    .line 269
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
    .line 144
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 146
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 147
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 4
    .parameter "backendId"

    .prologue
    .line 134
    iput p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    .line 136
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 139
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 140
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 286
    return-void
.end method
