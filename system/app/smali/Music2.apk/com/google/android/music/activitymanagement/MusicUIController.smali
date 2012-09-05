.class public Lcom/google/android/music/activitymanagement/MusicUIController;
.super Ljava/lang/Object;
.source "MusicUIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;
    }
.end annotation


# static fields
.field private static sFragmentZOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBottomBarController:Lcom/google/android/music/BottomBarController;

.field private mEmptyViewController:Lcom/google/android/music/EmptyViewController;

.field private mFocusAlbumReceiver:Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;

.field private mFullContentFrame:Landroid/view/ViewGroup;

.field private mLimitedContentFrame:Landroid/view/ViewGroup;

.field private mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

.field private mTopBar:Lcom/google/android/music/ActionbarController;

.field private mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicUIController$1;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicUIController$1;-><init>()V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicUIController;->sFragmentZOrderComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 6
    .parameter "topLevelActivity"
    .parameter "preferences"

    .prologue
    const/16 v2, 0x400

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 50
    invoke-virtual {p2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_25

    .line 51
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 52
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 56
    :cond_25
    return-void
.end method

.method private static getAllChildren(Landroid/view/ViewGroup;)Ljava/util/Set;
    .registers 5
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 251
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 252
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_15

    .line 253
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 255
    :cond_15
    return-object v1
.end method

.method private startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 211
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 213
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 215
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_14
    return-void
.end method

.method private startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 221
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 222
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/music/activitymanagement/MusicUIController$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/music/activitymanagement/MusicUIController$2;-><init>(Lcom/google/android/music/activitymanagement/MusicUIController;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1a
    return-void

    .line 238
    :cond_1b
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1a
.end method


# virtual methods
.method public getAlbumInfoView()Landroid/view/View;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->getAlbumInfoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBarHeight()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/music/BottomBarController;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method init(Lcom/google/android/music/ActionbarController;Lcom/google/android/music/BottomBarController;Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/EmptyViewController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .registers 8
    .parameter "topbar"
    .parameter "bottomBarController"
    .parameter "shopTutorialController"
    .parameter "emptyViewController"
    .parameter "fullContentFrame"
    .parameter "limitedContentFrame"
    .parameter "backgroundImageView"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopBar:Lcom/google/android/music/ActionbarController;

    .line 63
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    .line 64
    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    .line 65
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    .line 66
    iput-object p5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 67
    iput-object p6, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .line 68
    iput-object p7, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 69
    return-void
.end method

.method public registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/BottomBarController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 79
    return-void
.end method

.method public setFocusAlbumReceiver(Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;)V
    .registers 2
    .parameter "focusAlbumReceiver"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFocusAlbumReceiver:Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;

    .line 264
    return-void
.end method

.method public unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/BottomBarController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 91
    return-void
.end method

.method public updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "viewState"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ActionbarController;->setDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 260
    return-void
.end method

.method final updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V
    .registers 9
    .parameter "stateStack"

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    :cond_6
    :goto_6
    return-void

    .line 105
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v3

    .line 107
    .local v3, currentState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v0

    .line 108
    .local v0, actionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v4

    .line 109
    .local v4, layoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 110
    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 112
    :cond_1e
    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isUseSystemBackground()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 113
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_2a
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v5, v0}, Lcom/google/android/music/ActionbarController;->updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 118
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateOptionsMenu()V

    .line 119
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v5, v4}, Lcom/google/android/music/BottomBarController;->setLayoutConfiguration(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 120
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/EmptyViewController;->setPossibleEmptyView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 121
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-virtual {v5, v4}, Lcom/google/android/music/ShopTutorialController;->setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateTitles(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    .line 123
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFocusAlbumReceiver:Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;

    if-eqz v5, :cond_6

    .line 124
    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getFocusedAlbumId()J

    move-result-wide v1

    .line 125
    .local v1, albumId:J
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFocusAlbumReceiver:Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;

    invoke-interface {v5, v1, v2}, Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;->onFocusAlbumChange(J)V

    goto :goto_6

    .line 115
    .end local v1           #albumId:J
    :cond_58
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a
.end method

.method final updateTitles(Lcom/google/android/music/activitymanagement/MusicStateStack;)V
    .registers 9
    .parameter "stateStack"

    .prologue
    const/4 v4, 0x1

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, primaryTitle:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 132
    .local v3, secondaryTitle:Ljava/lang/CharSequence;
    const/4 v0, 0x1

    .line 133
    .local v0, atTop:Z
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 134
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 135
    .local v1, lastState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v5, v6, :cond_41

    move v0, v4

    .line 136
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 137
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v5

    if-le v5, v4, :cond_3b

    .line 138
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 146
    .end local v1           #lastState:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_3b
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v4, v2, v3, v0}, Lcom/google/android/music/ActionbarController;->updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 147
    return-void

    .line 135
    .restart local v1       #lastState:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_41
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method updateViews(Ljava/util/Set;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, fragments:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 162
    sget-object v10, Lcom/google/android/music/activitymanagement/MusicUIController;->sFragmentZOrderComparator:Ljava/util/Comparator;

    invoke-static {v10}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v8

    .line 163
    .local v8, sortedFragments:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 166
    .local v3, finalFullFrameChildren:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v4

    .line 167
    .local v4, finalLimitedFrameChildren:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 168
    .local v5, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 169
    .local v9, view:Landroid/view/View;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->isFullScreen()Z

    move-result v10

    if-eqz v10, :cond_32

    .line 170
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 172
    :cond_32
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 176
    .end local v5           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v9           #view:Landroid/view/View;
    :cond_36
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-static {v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAllChildren(Landroid/view/ViewGroup;)Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, currentFullFrameChildren:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-static {v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAllChildren(Landroid/view/ViewGroup;)Ljava/util/Set;

    move-result-object v1

    .line 179
    .local v1, currentLimitedFrameChildren:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 180
    .local v2, currentView:Landroid/view/View;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    .line 181
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_46

    .line 185
    .end local v2           #currentView:Landroid/view/View;
    :cond_5e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_62
    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 186
    .local v7, newView:Landroid/view/View;
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 187
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_62

    .line 191
    .end local v7           #newView:Landroid/view/View;
    :cond_7a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7e
    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 192
    .restart local v2       #currentView:Landroid/view/View;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 193
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_7e

    .line 196
    .end local v2           #currentView:Landroid/view/View;
    :cond_96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9a
    :goto_9a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 197
    .restart local v7       #newView:Landroid/view/View;
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    .line 198
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_9a

    .line 204
    .end local v7           #newView:Landroid/view/View;
    :cond_b2
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ca

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 205
    .restart local v5       #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->bringToFront()V

    goto :goto_b6

    .line 207
    .end local v5           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_ca
    return-void
.end method
