.class public Lcom/google/android/music/activitymanagement/MusicUIController;
.super Ljava/lang/Object;
.source "MusicUIController.java"

# interfaces
.implements Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;


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

.field private static sOnlyMainFrameFragments:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBar:Lcom/google/android/music/ActionbarController;

.field private mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

.field private mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBottomBarController:Lcom/google/android/music/BottomBarController;

.field private mCurrentAtHomeState:I

.field private mEmptyViewController:Lcom/google/android/music/EmptyViewController;

.field private mFullContentFrame:Landroid/view/ViewGroup;

.field private final mIsLandscape:Z

.field private final mIsTablet:Z

.field private mLimitedContentFrame:Landroid/view/ViewGroup;

.field private mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

.field private mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicUIController$1;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicUIController$1;-><init>()V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicUIController;->sFragmentZOrderComparator:Ljava/util/Comparator;

    .line 177
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicUIController$2;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicUIController$2;-><init>()V

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicUIController;->sOnlyMainFrameFragments:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "topLevelActivity"
    .parameter "preferences"

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mCurrentAtHomeState:I

    .line 60
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsTablet:Z

    .line 62
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsLandscape:Z

    .line 64
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsTablet:Z

    if-nez v0, :cond_33

    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsLandscape:Z

    if-eqz v0, :cond_33

    .line 66
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 70
    :cond_33
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
    .line 283
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 284
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 285
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_15

    .line 286
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 288
    :cond_15
    return-object v1
.end method

.method private startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 240
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 242
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 244
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_14
    return-void
.end method

.method private startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 250
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 251
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/music/activitymanagement/MusicUIController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicUIController$3;-><init>(Lcom/google/android/music/activitymanagement/MusicUIController;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1a
    return-void

    .line 271
    :cond_1b
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1a
.end method


# virtual methods
.method public getAlbumInfoView()Landroid/view/View;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->getAlbumInfoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getArtDownloadServiceConnection()Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    return-object v0
.end method

.method public getBottomBarHeight()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/music/BottomBarController;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method init(Lcom/google/android/music/ActionbarController;Lcom/google/android/music/BottomBarController;Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/athome/AtHomeTutorialController;Lcom/google/android/music/EmptyViewController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V
    .registers 11
    .parameter "actionBar"
    .parameter "bottomBarController"
    .parameter "shopTutorialController"
    .parameter "atHomeTutorialController"
    .parameter "emptyViewController"
    .parameter "fullContentFrame"
    .parameter "limitedContentFrame"
    .parameter "backgroundImageView"
    .parameter "artDownloadServiceConnection"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    .line 79
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    .line 80
    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    .line 81
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    .line 82
    iput-object p5, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    .line 83
    iput-object p6, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 84
    iput-object p7, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .line 85
    iput-object p8, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 86
    iput-object p9, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    .line 87
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/EmptyViewController;->registerEmptyViewStateListener(Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;)V

    .line 88
    return-void
.end method

.method public onEmptyViewStateChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    const/16 v0, 0x8

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 320
    return-void

    .line 319
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/BottomBarController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 98
    return-void
.end method

.method public setAtHomeState(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mCurrentAtHomeState:I

    if-eq p1, v0, :cond_21

    .line 297
    iput p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mCurrentAtHomeState:I

    .line 298
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ActionbarController;->setCurrentAtHomeState(I)V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v0}, Lcom/google/android/music/ShopTutorialController;->setShopTutorialAllowed(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/athome/AtHomeTutorialController;->setAtHomeState(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeTutorialController;->showTutorialIfAvailable()V

    .line 311
    :cond_21
    return-void

    .line 305
    :cond_22
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/BottomBarController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 110
    return-void
.end method

.method public updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "viewState"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ActionbarController;->setDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 293
    return-void
.end method

.method final updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V
    .registers 7
    .parameter "stateStack"

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 143
    :goto_6
    return-void

    .line 124
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 126
    .local v1, currentState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v0

    .line 127
    .local v0, actionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    .line 128
    .local v2, layoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsLandscape:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mIsTablet:Z

    if-eqz v3, :cond_26

    .line 129
    :cond_21
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 131
    :cond_26
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isUseSystemBackground()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 132
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_32
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v3, v0}, Lcom/google/android/music/ActionbarController;->updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 137
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mTopLevelActivtity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateOptionsMenu()V

    .line 138
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v3, v2}, Lcom/google/android/music/BottomBarController;->setLayoutConfiguration(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/EmptyViewController;->setPossibleEmptyView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 140
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-virtual {v3, v2}, Lcom/google/android/music/ShopTutorialController;->setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 141
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v3, v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateTitles(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    goto :goto_6

    .line 134
    :cond_58
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mBackgroundImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32
.end method

.method final updateTitles(Lcom/google/android/music/activitymanagement/MusicStateStack;)V
    .registers 9
    .parameter "stateStack"

    .prologue
    const/4 v4, 0x1

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, primaryTitle:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 148
    .local v3, secondaryTitle:Ljava/lang/CharSequence;
    const/4 v0, 0x1

    .line 149
    .local v0, atTop:Z
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 150
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 151
    .local v1, lastState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v5, v6, :cond_41

    move v0, v4

    .line 152
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v5

    if-le v5, v4, :cond_3b

    .line 154
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 162
    .end local v1           #lastState:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_3b
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mActionBar:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v4, v2, v3, v0}, Lcom/google/android/music/ActionbarController;->updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 163
    return-void

    .line 151
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
    .line 186
    .local p1, fragments:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 191
    sget-object v10, Lcom/google/android/music/activitymanagement/MusicUIController;->sFragmentZOrderComparator:Ljava/util/Comparator;

    invoke-static {v10}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v8

    .line 192
    .local v8, sortedFragments:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    sget-object v10, Lcom/google/android/music/activitymanagement/MusicUIController;->sOnlyMainFrameFragments:Lcom/google/common/base/Predicate;

    invoke-static {p1, v10}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 195
    .local v3, finalFullFrameChildren:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v4

    .line 196
    .local v4, finalLimitedFrameChildren:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 197
    .local v5, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 198
    .local v9, view:Landroid/view/View;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->isFullScreen()Z

    move-result v10

    if-eqz v10, :cond_38

    .line 199
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 201
    :cond_38
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 205
    .end local v5           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v9           #view:Landroid/view/View;
    :cond_3c
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-static {v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAllChildren(Landroid/view/ViewGroup;)Ljava/util/Set;

    move-result-object v0

    .line 206
    .local v0, currentFullFrameChildren:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-static {v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAllChildren(Landroid/view/ViewGroup;)Ljava/util/Set;

    move-result-object v1

    .line 208
    .local v1, currentLimitedFrameChildren:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4c
    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 209
    .local v2, currentView:Landroid/view/View;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 210
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_4c

    .line 214
    .end local v2           #currentView:Landroid/view/View;
    :cond_64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_68
    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 215
    .local v7, newView:Landroid/view/View;
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_68

    .line 216
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_68

    .line 220
    .end local v7           #newView:Landroid/view/View;
    :cond_80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_84
    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 221
    .restart local v2       #currentView:Landroid/view/View;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_84

    .line 222
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_84

    .line 225
    .end local v2           #currentView:Landroid/view/View;
    :cond_9c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a0
    :goto_a0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 226
    .restart local v7       #newView:Landroid/view/View;
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 227
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/MusicUIController;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v10}, Lcom/google/android/music/activitymanagement/MusicUIController;->startEnterAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_a0

    .line 233
    .end local v7           #newView:Landroid/view/View;
    :cond_b8
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 234
    .restart local v5       #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->bringToFront()V

    goto :goto_bc

    .line 236
    .end local v5           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_d0
    return-void
.end method
