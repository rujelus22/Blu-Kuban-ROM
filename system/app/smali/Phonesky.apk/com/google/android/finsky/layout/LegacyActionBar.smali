.class public Lcom/google/android/finsky/layout/LegacyActionBar;
.super Landroid/widget/LinearLayout;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBreadcrumb:Landroid/widget/TextView;

.field private mCorpusChevronIcon:Landroid/widget/ImageView;

.field private mCorpusUpPack:Landroid/view/View;

.field private mCurrentBackendId:I

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
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/google/android/finsky/layout/LegacyActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$1;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupBackground()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method private setupBackground()V
    .registers 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method private setupCorpusIcon()V
    .registers 3

    .prologue
    .line 181
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    .line 185
    return-void
.end method

.method private setupSearchButton()V
    .registers 3

    .prologue
    .line 165
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$3;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private setupShareButton()V
    .registers 3

    .prologue
    .line 188
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$4;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method private syncActionBar()V
    .registers 14

    .prologue
    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v8, 0x0

    .line 201
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v5

    .line 202
    .local v5, currentPageType:I
    const/4 v9, 0x5

    if-ne v5, v9, :cond_b0

    const/4 v6, 0x1

    .line 203
    .local v6, isDetailsPage:Z
    :goto_e
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_b3

    move v9, v8

    :goto_13
    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v3

    .line 206
    .local v3, canGoUp:Z
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_b6

    move v9, v8

    :goto_21
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setClickable(Z)V

    .line 208
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 210
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v9

    if-eqz v9, :cond_b9

    move v9, v8

    :goto_39
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v12

    if-eqz v12, :cond_47

    move v10, v8

    :cond_47
    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 215
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setClickable(Z)V

    .line 216
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v8, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v9, 0x7f0701cd

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :cond_6e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v7

    .line 224
    .local v7, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v7, :cond_af

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v8

    if-eqz v8, :cond_af

    .line 225
    const v8, 0x7f08000a

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 226
    .local v4, corpusIcon:Landroid/widget/ImageView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    .line 227
    .local v2, bl:Lcom/google/android/finsky/utils/BitmapLoader;
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/google/android/finsky/layout/LegacyActionBar$5;

    invoke-direct {v10, p0, v4}, Lcom/google/android/finsky/layout/LegacyActionBar$5;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v8, v9, v10}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    .line 234
    .local v1, bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_af

    .line 235
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    .end local v0           #actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v2           #bl:Lcom/google/android/finsky/utils/BitmapLoader;
    .end local v4           #corpusIcon:Landroid/widget/ImageView;
    :cond_af
    return-void

    .end local v3           #canGoUp:Z
    .end local v6           #isDetailsPage:Z
    .end local v7           #toc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_b0
    move v6, v8

    .line 202
    goto/16 :goto_e

    .restart local v6       #isDetailsPage:Z
    :cond_b3
    move v9, v10

    .line 203
    goto/16 :goto_13

    .restart local v3       #canGoUp:Z
    :cond_b6
    move v9, v11

    .line 206
    goto/16 :goto_21

    :cond_b9
    move v9, v11

    .line 210
    goto/16 :goto_39
.end method

.method private syncDisplayTitle()V
    .registers 5

    .prologue
    .line 143
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 144
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v3, 0x7f0700cd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 146
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_2f

    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_2f

    .line 147
    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 148
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_2f

    .line 149
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    return-void

    .line 153
    :cond_3c
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .registers 3
    .parameter "text"
    .parameter "tabListener"

    .prologue
    .line 284
    return-void
.end method

.method public clearTabs()V
    .registers 1

    .prologue
    .line 292
    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 3
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 243
    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
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
    .line 161
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 262
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .registers 5
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 108
    iput-object p2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    .line 109
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupSearchButton()V

    .line 112
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupShareButton()V

    .line 113
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupCorpusIcon()V

    .line 115
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$2;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 124
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedTab(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 288
    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 247
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 248
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_4c

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 251
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

    .line 253
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

    .line 258
    .end local v1           #intent:Landroid/content/Intent;
    :goto_4b
    return-void

    .line 256
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
    .line 137
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 139
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 140
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backendId"

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    .line 130
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 133
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 273
    return-void
.end method
