.class public Lcom/google/android/music/TabbedLists;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "TabbedLists.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;,
        Lcom/google/android/music/TabbedLists$TabInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/android/music/TabbedLists$TabInfo;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveTab:I

.field private mAtHomeBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

.field private mLeftTabStripOverlay:Landroid/view/View;

.field private mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

.field private mMusicMode:I

.field private mOriginalTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mRightTabStripOverlay:Landroid/view/View;

.field private mSubState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

.field private mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

.field private mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "TabbedLists"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    .line 287
    new-instance v0, Lcom/google/android/music/TabbedLists$1;

    invoke-direct {v0}, Lcom/google/android/music/TabbedLists$1;-><init>()V

    sput-object v0, Lcom/google/android/music/TabbedLists;->sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "base"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 58
    iput v1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 73
    iput v1, p0, Lcom/google/android/music/TabbedLists;->mMusicMode:I

    .line 85
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-direct {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    .line 87
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/TabbedLists;)Lcom/google/android/music/activitymanagement/MusicFragmentManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    return-object v0
.end method

.method private getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabInfo;

    .line 162
    .local v0, tabSetupInfo:Lcom/google/android/music/TabbedLists$TabInfo;
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabInfo;->access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    return-object v1
.end method

.method private loadTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 198
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabInfo;->access$200(Lcom/google/android/music/TabbedLists$TabInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 199
    iput v0, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 203
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 204
    return-void

    .line 197
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateBackgroundForCurrentState()V
    .registers 3

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/music/TabbedLists;->mMusicMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 303
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mAtHomeBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_c
    return-void

    .line 305
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mOriginalTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabInfo;->access$200(Lcom/google/android/music/TabbedLists$TabInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicEventConstants;->getAnalyticsPage(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 10
    .parameter "state"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 126
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v2, subIntent:Landroid/content/Intent;
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 129
    .local v1, savedBundle:Landroid/os/Bundle;
    if-nez v1, :cond_52

    .line 130
    const/4 v3, 0x0

    .line 134
    .local v3, subStatesBundle:Landroid/os/Bundle;
    :goto_f
    new-instance v4, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {v4, v2, p0, v3}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 135
    iget-object v4, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    .line 137
    iget-object v4, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/TabbedLists;->sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;

    invoke-static {v4, v5}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    .line 139
    .local v0, requiredFragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    iget-object v4, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v5, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->launchFragments(Ljava/util/Collection;Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 141
    iget-object v4, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 143
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "rootViewState"

    sget-object v7, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/google/android/music/TabbedLists;->loadTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->updateBackgroundForCurrentState()V

    .line 147
    return-void

    .line 132
    .end local v0           #requiredFragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    .end local v3           #subStatesBundle:Landroid/os/Bundle;
    :cond_52
    const-string v4, "substates"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .restart local v3       #subStatesBundle:Landroid/os/Bundle;
    goto :goto_f
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 175
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 382
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mLeftTabStripOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_1b

    .line 383
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_1a

    .line 384
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 391
    :cond_1a
    :goto_1a
    return-void

    .line 386
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mRightTabStripOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_1a

    .line 387
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    .line 388
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1a
.end method

.method protected onCreate()V
    .registers 6

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 93
    new-instance v2, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;-><init>(Lcom/google/android/music/TabbedLists;)V

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    .line 95
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, p0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 97
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onCreate()V

    .line 99
    const v2, 0x7f040059

    invoke-virtual {p0, v2}, Lcom/google/android/music/TabbedLists;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    .line 100
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    const v3, 0x7f1000ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 102
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    const v3, 0x7f1000ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/PagerTitleStrip;

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    .line 103
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 105
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    const v3, 0x3f333333

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 107
    const v2, 0x7f1000ee

    invoke-virtual {p0, v2}, Lcom/google/android/music/TabbedLists;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mLeftTabStripOverlay:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mLeftTabStripOverlay:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f1000f0

    invoke-virtual {p0, v2}, Lcom/google/android/music/TabbedLists;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mRightTabStripOverlay:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mRightTabStripOverlay:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mOriginalTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    .line 115
    .local v1, mc:Lcom/google/android/music/activitymanagement/MusicStateController;
    if-eqz v1, :cond_99

    .line 116
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/TabbedLists;->mMusicMode:I

    .line 118
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 119
    .local v0, color:I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/music/TabbedLists;->mAtHomeBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 246
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onDestroy()V

    .line 216
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 166
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setUseSystemBackground(Z)V

    .line 168
    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/google/android/music/TabbedLists;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 170
    .local v0, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 172
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->dispatchLowMemory()V

    .line 152
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v1

    .line 311
    .local v1, musicMode:I
    iget v2, p0, Lcom/google/android/music/TabbedLists;->mMusicMode:I

    if-eq v2, v1, :cond_11

    const/4 v0, 0x1

    .line 313
    .local v0, dirty:Z
    :goto_9
    if-eqz v0, :cond_10

    .line 314
    iput v1, p0, Lcom/google/android/music/TabbedLists;->mMusicMode:I

    .line 315
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->updateBackgroundForCurrentState()V

    .line 317
    :cond_10
    return-void

    .line 311
    .end local v0           #dirty:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 220
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 224
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 227
    iput p1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 228
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabAdapter:Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;

    #getter for: Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabInfo;->access$200(Lcom/google/android/music/TabbedLists$TabInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    .line 229
    .local v0, viewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rootViewState"

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->setDisplayModeWithNoLaunch(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->requestReconfig()V

    .line 233
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v1, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 234
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onPause()V

    .line 209
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 210
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 251
    return-void
.end method

.method public onReconfigRequested(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->requestReconfig()V

    .line 298
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 182
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    .line 185
    .local v0, mc:Lcom/google/android/music/activitymanagement/MusicStateController;
    if-eqz v0, :cond_1a

    .line 186
    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 190
    :goto_11
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 191
    return-void

    .line 188
    :cond_1a
    const-string v1, "TabbedLists"

    const-string v2, "MusicStateController was null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;->saveState(Ljava/util/Set;)V

    .line 157
    const-string v0, "substates"

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getAllSavedStates()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    return-void
.end method
