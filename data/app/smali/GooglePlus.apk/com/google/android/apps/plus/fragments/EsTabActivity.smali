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
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mSwipeEnabled:Z

    .line 57
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 58
    iput p2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainerId:I

    .line 59
    return-void
.end method

.method private createTab(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v1

    .line 299
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreateTab(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 302
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 303
    .local v3, transaction:Landroid/support/v4/app/FragmentTransaction;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tab."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, tag:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 313
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 314
    return-void
.end method

.method private getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    .registers 5
    .parameter "index"

    .prologue
    .line 138
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;-><init>(Lcom/google/android/apps/plus/fragments/EsTabActivity$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
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
    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSelectedTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 219
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabSelected(ILandroid/support/v4/app/Fragment;)V

    .line 220
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v1, :cond_14

    .line 221
    check-cast v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 223
    :cond_14
    return-void
.end method

.method private recordTabChanged(II)V
    .registers 9
    .parameter "oldTabId"
    .parameter "newTabId"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 208
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_16

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 210
    .local v2, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    .line 211
    .local v5, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eq v5, v2, :cond_16

    .line 212
    const-wide/16 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 215
    .end local v2           #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local v5           #view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :cond_16
    return-void
.end method

.method private updateViewVisibility()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    if-nez v2, :cond_1b

    .line 273
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainerId:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/TabContainer;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    .line 274
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mSwipeEnabled:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TabContainer;->setScrollEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/TabContainer;->setOnTabChangeListener(Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;)V

    .line 278
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabContainer:Lcom/google/android/apps/plus/views/TabContainer;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/TabContainer;->setSelectedPanel(I)V

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 281
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 282
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne v0, v2, :cond_4c

    .line 283
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 284
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_49

    .line 286
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->createTab(I)V

    .line 280
    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 289
    :cond_4c
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_49

    .line 292
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
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    .line 97
    .local v0, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    .line 98
    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    .line 100
    return-void
.end method

.method protected attachProgressBarToCurrentTab()V
    .registers 4

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getSelectedTabIndex()I

    move-result v0

    .line 336
    .local v0, currentTab:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    .line 337
    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v2

    iget-object v1, v2, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 338
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v2, :cond_1a

    .line 339
    check-cast v1, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 342
    :cond_1a
    return-void
.end method

.method public getSelectedTabFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getSelectedTabIndex()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    return v0
.end method

.method protected getTabIndexForFragment(Landroid/support/v4/app/Fragment;)I
    .registers 7
    .parameter "fragment"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_3a

    const-string v2, "tab."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 124
    const/4 v2, 0x4

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_18

    move-result v2

    .line 131
    :goto_17
    return v2

    .line 125
    :catch_18
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "EsEvents"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 127
    const-string v2, "EsEvents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown format for fragment tag; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3a
    const/4 v2, -0x1

    goto :goto_17
.end method

.method protected final getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 153
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
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v0

    iput-object p2, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 108
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne p1, v0, :cond_d

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabSelected(ILandroid/support/v4/app/Fragment;)V

    .line 111
    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 167
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 168
    .local v1, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget-object v2, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->tabButton:Landroid/view/View;

    if-ne p1, v2, :cond_19

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->selectTab(I)V

    .line 173
    .end local v1           #tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    :cond_18
    return-void

    .line 166
    .restart local v1       #tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_29

    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 323
    const v0, 0x7f0902ae

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->attachProgressBarToCurrentTab()V

    .line 328
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
    .line 84
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 86
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 257
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->updateViewVisibility()V

    .line 258
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_20

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_20

    .line 261
    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 264
    :cond_20
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareSelectedTab()V

    .line 266
    :cond_23
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "currentTab"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method protected onTabDeselected(ILandroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 246
    return-void
.end method

.method public onTabSelected(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->selectTab(I)V

    .line 243
    return-void
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 249
    return-void
.end method

.method public onTabVisibilityChange(IZ)V
    .registers 6
    .parameter "index"
    .parameter "visible"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    .line 231
    .local v0, tab:Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;
    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->containerView:Landroid/view/View;

    if-eqz p2, :cond_1a

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    if-eqz p2, :cond_19

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_19

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->createTab(I)V

    .line 235
    :cond_19
    return-void

    .line 231
    :cond_1a
    const/4 v1, 0x4

    goto :goto_d
.end method

.method public selectTab(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 184
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    if-ne p1, v1, :cond_5

    .line 204
    :goto_4
    return-void

    .line 188
    :cond_5
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 189
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->getTab(I)Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/apps/plus/fragments/EsTabActivity$Tab;->fragment:Landroid/support/v4/app/Fragment;

    .line 190
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onTabDeselected(ILandroid/support/v4/app/Fragment;)V

    .line 191
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v1, :cond_2c

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_26

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    :cond_26
    check-cast v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/Refreshable;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 200
    :cond_2c
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->recordTabChanged(II)V

    .line 201
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EsTabActivity;->mCurrentTab:I

    .line 202
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->updateViewVisibility()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareSelectedTab()V

    goto :goto_4
.end method
