.class public Lcom/android/browser/PieControlXLarge;
.super Lcom/android/browser/PieControlBase;
.source "PieControlXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PieControlXLarge$MenuAdapter;
    }
.end annotation


# instance fields
.field private mBack:Lcom/android/browser/view/PieItem;

.field private mBookmarks:Lcom/android/browser/view/PieItem;

.field private mClose:Lcom/android/browser/view/PieItem;

.field private mForward:Lcom/android/browser/view/PieItem;

.field private mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

.field private mNewTab:Lcom/android/browser/view/PieItem;

.field private mOptions:Lcom/android/browser/view/PieItem;

.field private mRefresh:Lcom/android/browser/view/PieItem;

.field private mShowTabs:Lcom/android/browser/view/PieItem;

.field private mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

.field private mUi:Lcom/android/browser/BaseUi;

.field private mUrl:Lcom/android/browser/view/PieItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V
    .registers 4
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/browser/PieControlBase;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 61
    iput-object p2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    .line 62
    iput-object p3, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PieControlXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/browser/PieControlXLarge;->buildTabs()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/PieControlXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/browser/PieControlXLarge;->buildMenu()V

    return-void
.end method

.method private buildMenu()V
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 130
    .local v0, menu:Landroid/view/Menu;
    const v1, 0x7f0d0111

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 131
    iget-object v1, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/PieControlXLarge$MenuAdapter;->setMenu(Landroid/view/Menu;)V

    .line 132
    return-void
.end method

.method private buildTabs()V
    .registers 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->capture()V

    .line 123
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/PieControlBase$TabAdapter;->setTabs(Ljava/util/List;)V

    .line 124
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/PieStackView;

    .line 125
    .local v0, sym:Lcom/android/browser/view/PieStackView;
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/view/PieStackView;->setCurrent(I)V

    .line 126
    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .registers 4
    .parameter "container"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/browser/PieControlBase;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 68
    iget-object v0, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieMenu;->setUseBackground(Z)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 137
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 138
    .local v1, web:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1b

    .line 139
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    .line 158
    :cond_1a
    :goto_1a
    return-void

    .line 140
    :cond_1b
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_27

    .line 141
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_1a

    .line 142
    :cond_27
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_3d

    .line 143
    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 144
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_1a

    .line 146
    :cond_39
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_1a

    .line 148
    :cond_3d
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_4b

    .line 149
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_1a

    .line 150
    :cond_4b
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_59

    .line 151
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    goto :goto_1a

    .line 152
    :cond_59
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6c

    .line 153
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 154
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_1a

    .line 155
    :cond_6c
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    .line 156
    iget-object v2, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->closeCurrentTab()V

    goto :goto_1a
.end method

.method protected populateMenu()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 72
    const v3, 0x7f02003f

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    .line 73
    const v3, 0x7f02008b

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    .line 74
    const v3, 0x7f020046

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    .line 75
    const v3, 0x7f02007c

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    .line 76
    const v3, 0x7f020054

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    .line 77
    const v3, 0x7f020074

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    .line 78
    const v3, 0x7f02004b

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    .line 79
    invoke-virtual {p0}, Lcom/android/browser/PieControlXLarge;->makeTabsView()Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, tabs:Landroid/view/View;
    new-instance v3, Lcom/android/browser/view/PieItem;

    invoke-direct {v3, v2, v6}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    .line 81
    const v3, 0x108033f

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    .line 83
    new-instance v3, Lcom/android/browser/PieControlXLarge$MenuAdapter;

    iget-object v4, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/PieControlXLarge$MenuAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    .line 84
    new-instance v3, Lcom/android/browser/PieControlBase$TabAdapter;

    iget-object v4, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/PieControlBase;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/PieControlBase$TabAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    .line 85
    new-instance v1, Lcom/android/browser/view/PieStackView;

    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/android/browser/view/PieStackView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, stack:Lcom/android/browser/view/PieStackView;
    new-instance v3, Lcom/android/browser/PieControlXLarge$1;

    invoke-direct {v3, p0}, Lcom/android/browser/PieControlXLarge$1;-><init>(Lcom/android/browser/PieControlXLarge;)V

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 92
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V

    .line 93
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setAdapter(Landroid/widget/Adapter;)V

    .line 94
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v1}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 95
    new-instance v0, Lcom/android/browser/view/PieListView;

    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/browser/view/PieListView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, menuview:Lcom/android/browser/view/PieListView;
    new-instance v3, Lcom/android/browser/PieControlXLarge$2;

    invoke-direct {v3, p0}, Lcom/android/browser/PieControlXLarge$2;-><init>(Lcom/android/browser/PieControlXLarge;)V

    invoke-virtual {v0, v3}, Lcom/android/browser/view/PieListView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 103
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v0}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 104
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/browser/view/PieListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 105
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/browser/view/PieItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    invoke-virtual {p0, p0, v3}, Lcom/android/browser/PieControlXLarge;->setClickListener(Landroid/view/View$OnClickListener;[Lcom/android/browser/view/PieItem;)V

    .line 108
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 109
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 110
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 112
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 113
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 114
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 115
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 116
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 117
    iget-object v3, p0, Lcom/android/browser/PieControlBase;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 118
    return-void
.end method
