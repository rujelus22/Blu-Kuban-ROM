.class public abstract Lcom/google/android/apps/plus/fragments/EsTabActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EsTabActivity$1;,
        Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    }
.end annotation


# instance fields
.field private mCurrentTab:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSwipeEnabled:Z

.field private mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

.field private mTabContainerId:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(II)V
    .registers 4
    .parameter "defaultTab"
    .parameter "tabContainerId"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mSwipeEnabled:Z

    .line 51
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 52
    iput p2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainerId:I

    .line 53
    return-void
.end method

.method private createTab(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v1

    .line 272
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreateTab(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 275
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 276
    .local v3, transaction:Landroid/support/v4/app/FragmentTransaction;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tab["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, tag:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 283
    return-void
.end method

.method private getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    .registers 5
    .parameter "index"

    .prologue
    .line 111
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;-><init>(Lcom/google/android/apps/plus/fragments/EsTabActivity$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    return-object v0
.end method

.method private onPrepareSelectedTab()V
    .registers 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSelectedTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 192
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabSelected(ILandroid/support/v4/app/Fragment;)V

    .line 193
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v1, :cond_14

    .line 194
    check-cast v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 196
    :cond_14
    return-void
.end method

.method private recordTabChanged(II)V
    .registers 6
    .parameter "oldTabId"
    .parameter "newTabId"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 181
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_13

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    .line 183
    .local v1, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 184
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eq v2, v1, :cond_13

    .line 185
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordTabNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 188
    .end local v1           #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :cond_13
    return-void
.end method

.method private updateViewVisibility()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    if-nez v2, :cond_1b

    .line 246
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainerId:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/TabContainer;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    .line 247
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mSwipeEnabled:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TabContainer;->setScrollEnabled(Z)V

    .line 248
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/TabContainer;->setOnTabChangeListener(Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;)V

    .line 251
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TabContainer;->setSelectedPanel(I)V

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 254
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 255
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne v0, v2, :cond_4c

    .line 256
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 257
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_49

    .line 259
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->createTab(I)V

    .line 253
    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 262
    :cond_4c
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_49

    .line 265
    .end local v1           #tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    :cond_52
    return-void
.end method


# virtual methods
.method protected addTab(III)V
    .registers 6
    .parameter "index"
    .parameter "tabButtonId"
    .parameter "tabContainerViewId"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    .line 91
    .local v0, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    .line 92
    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    .line 94
    return-void
.end method

.method protected attachProgressBarToCurrentTab()V
    .registers 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSelectedTabIndex()I

    move-result v0

    .line 305
    .local v0, currentTab:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    .line 306
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v2

    iget-object v1, v2, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 307
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v2, :cond_1a

    .line 308
    check-cast v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 311
    :cond_1a
    return-void
.end method

.method public getSelectedTabFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getSelectedTabIndex()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    return v0
.end method

.method public getTabFragment(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter "index"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
.end method

.method protected onAttachFragment(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    iput-object p2, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 102
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne p1, v0, :cond_d

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabSelected(ILandroid/support/v4/app/Fragment;)V

    .line 105
    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 141
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    if-ne p1, v2, :cond_19

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->selectTab(I)V

    .line 146
    .end local v1           #tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    :cond_18
    return-void

    .line 139
    .restart local v1       #tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_29

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    const v0, 0x7f0d01b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->attachProgressBarToCurrentTab()V

    .line 297
    :cond_29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected abstract onCreateTab(I)Landroid/support/v4/app/Fragment;
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 80
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->updateViewVisibility()V

    .line 231
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_20

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_20

    .line 234
    const v0, 0x7f0d018e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 237
    :cond_20
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareSelectedTab()V

    .line 239
    :cond_23
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "currentTab"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method protected onTabDeselected(ILandroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 219
    return-void
.end method

.method public onTabSelected(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->selectTab(I)V

    .line 216
    return-void
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 222
    return-void
.end method

.method public onTabVisibilityChange(IZ)V
    .registers 6
    .parameter "index"
    .parameter "visible"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 204
    .local v0, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    if-eqz p2, :cond_1a

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    if-eqz p2, :cond_19

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_19

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->createTab(I)V

    .line 208
    :cond_19
    return-void

    .line 204
    :cond_1a
    const/4 v1, 0x4

    goto :goto_d
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSelectedTabIndex()I

    move-result v0

    .line 318
    .local v0, currentTab:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 319
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v2

    iget-object v1, v2, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 320
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v2, :cond_18

    .line 321
    check-cast v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/Refreshable;->refresh()V

    .line 324
    :cond_18
    return-void
.end method

.method public selectTab(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 157
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne p1, v1, :cond_5

    .line 177
    :goto_4
    return-void

    .line 161
    :cond_5
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 162
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 163
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabDeselected(ILandroid/support/v4/app/Fragment;)V

    .line 164
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v1, :cond_2c

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_26

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    :cond_26
    check-cast v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 173
    :cond_2c
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->recordTabChanged(II)V

    .line 174
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->updateViewVisibility()V

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareSelectedTab()V

    goto :goto_4
.end method

.method protected setSwipeEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mSwipeEnabled:Z

    .line 57
    return-void
.end method
